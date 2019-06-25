<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

const PROPOSTA_STATUS_ACEITO = 3;
const PROPOSTA_STATUS_RECUSADO = 2;
const PROPOSTA_STATUS_CANCELADO = 4;
const PROPOSTA_STATUS_NOVO_AGUARD = '1,0';
const VALOR_DIAS_MULTA = -25;

class PropostasController extends BaseController
{

    public function novaProposta($user, $request)
    {

        $servico_id = $request->get('servico_id');
        $arrayEspecialidades = $request->get('arrayEspecialidades');
        $date = $request->get('date');
        $hora = $request->get('hora');
        $descricao = $request->get('descricao');

        if ($servico_id == null) {
            return showError("servico_id obrigatório");
        }

        //if ($arrayEspecialidades == null) return showError("arrayEspecialidades obrigatório");
        if ($date == null) {
            return showError("date obrigatório");
        }

        if ($hora == null) {
            return showError("hora obrigatório");
        }

        if ($descricao == null) {
            return showError("descricao obrigatório");
        }

        $data_in = implode("-", array_reverse(explode("/", $date))) . " " . $hora . ":00";

        $sql = " INSERT INTO `tb_proposta` (id_grupo, data_in, obs, id_user)
        VALUES ('$servico_id','$data_in','$descricao','$user->id_user') ";

        if ($arrayEspecialidades != null) {
            $sql = " INSERT INTO `tb_proposta` (id_grupo, data_in, obs, id_user, grupo_categorias)
            VALUES ('$servico_id','$data_in','$descricao','$user->id_user', '$arrayEspecialidades') ";
        }

        app('db')->insert($sql);

        //Deleta Imagem anterior caso exista
        $sql = " SELECT max(id) as max_id from `tb_proposta` where id_user = '$user->id_user' ";
        $dados = app('db')->select($sql);

        $max_id = $dados[0]->max_id;

        return showSucess(
            [
                'proposta_id' => $max_id,
            ]
        );
    }

    public function dailyNotify(){

         $sql = "SELECT id, id_user_f,data_in,  id_user FROM tb_proposta 
            WHERE users_notified = 0 
            and id_user_f is not null 
            AND id_proposta_status in (" . PROPOSTA_STATUS_ACEITO . ")
            and  DATE(data_in) = CURDATE()
            and data_del is null";

        $dados = app('db')->select($sql);

        foreach($dados as $value) {
             
            $id_proposta = $value->id;
            $id_user = $value->id_user;
            $id_user_f = $value->id_user_f;

            $msg_cliente = "Atenção, cliente! Verifique sua proposta para hoje. Entre em contato com seu profissional para acertar todos os detalhes!";
            $msg_profissional = "Atenção, profissional! Verifique sua proposta para hoje. Entre em contato com seu cliente para acertar todos os detalhes!";
            
            app('App\Http\Controllers\UsersController')
            ->sendNotification($id_user, $msg_cliente,
                array('id_proposta' => $id_proposta)); 
                
            app('App\Http\Controllers\UsersController')
            ->sendNotification($id_user_f, $msg_profissional,
                array('id_proposta' => $id_proposta));

                app('db')->update("UPDATE tb_proposta set users_notified=1 where id = '$id_proposta'");

        }
        
        return showSucess($dados);
    }

    public function setStatusAcept($user, $request)
    {
        $id_user = $user->id_user;
        $id_proposta = $request->get('id_proposta');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }

        $sql = " SELECT id, id_user, id_user_f from `tb_proposta` where id = '$id_proposta' and  (id_user='$id_user' or id_user_f='$id_user')
                AND id_proposta_status in (" . PROPOSTA_STATUS_NOVO_AGUARD . ") ";
        $dadosPropost = app('db')->select($sql);

        if (!isset($dadosPropost[0])) {
            return showError("Proposta não encontrada!");
        }

        $isClient = $dadosPropost[0]->id_user == $id_user;

        if ($isClient === true) { // é o cliente
            return showError("Ops, voce é o cliente da proposta. Somente profissionais podem aceitar propostas!");

        } else { // é o profissional -
            $sql = "UPDATE `tb_proposta` SET  id_proposta_status='" . PROPOSTA_STATUS_ACEITO . "' where id = '$id_proposta' ";
            app('db')->update($sql);

            app('App\Http\Controllers\UsersController')
                ->sendNotification($dadosPropost[0]->id_user, "Sua proposta foi aceita pelo profissional!",
                    array('id_proposta' => $id_proposta));

            return showSucess(['update' => true]);
        }
    }

    public function setStatusCancel($user, $request)
    {
        $id_user = $user->id_user;
        $id_proposta = $request->get('id_proposta');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }

        $sql = " SELECT id, id_user, id_user_f, data_in, (DATE_ADD(data_in, INTERVAL 4 HOUR) > NOW()) as permission_to_cancel from `tb_proposta` where id = '$id_proposta' and  (id_user='$id_user' or id_user_f='$id_user')
                AND id_proposta_status in (" . PROPOSTA_STATUS_NOVO_AGUARD . "," . PROPOSTA_STATUS_ACEITO . ") ";
        $dadosPropost = app('db')->select($sql);

        if (!isset($dadosPropost[0])) {
            return showError("Proposta não encontrada!");
        }

        $isClient = $dadosPropost[0]->id_user == $id_user;
        $data_in = $dadosPropost[0]->data_in;

        if ($isClient === true) { // é o cliente

            if ($dadosPropost[0]->id_user_f == null) {
                return cancelProposal($id_proposta);

            } else { // Possúi profissional
                if ($dadosPropost[0]->permission_to_cancel) {
                    return cancelProposal($id_proposta, "Proposta cancelada pelo cliente", $dadosPropost[0]->id_user);
                } else {
                    breakRulles_cancel($dadosPropost[0]->id_user, "Cancelamento da proposta " . $id_proposta, $id_proposta);
                    return cancelProposal($id_proposta, "Proposta cancelada pelo cliente", $dadosPropost[0]->id_user);
                }
            }

        } else { // é o profissional -
            if ($dadosPropost[0]->permission_to_cancel) {
                return cancelProposal($id_proposta, "Proposta cancelada pelo profissional", $dadosPropost[0]->id_user_f);
            } else {
                breakRulles_cancel($dadosPropost[0]->id_user_f, "Cancelamento da proposta " . $id_proposta, $id_proposta);
                return cancelProposal($id_proposta, "Proposta cancelada pelo profissional", $dadosPropost[0]->id_user_f);
            }
        }
    }

    public function setStatusRefused($user, $request)
    {
        $id_user = $user->id_user;
        $id_proposta = $request->get('id_proposta');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }

        $sql = " SELECT id, id_user, id_user_f from `tb_proposta` where id = '$id_proposta' and  (id_user='$id_user' or id_user_f='$id_user')
                AND id_proposta_status in (" . PROPOSTA_STATUS_NOVO_AGUARD . "," . PROPOSTA_STATUS_ACEITO . ") ";
        $dadosPropost = app('db')->select($sql);

        if (!isset($dadosPropost[0])) {
            return showError("Proposta não encontrada!");
        }

        $isClient = $dadosPropost[0]->id_user == $id_user;

        if ($isClient === true) { // é o cliente
            return showError("Ops, voce é o cliente da proposta. Somente profissionais podem recusar as propostas!");

        } else { // é o profissional

            $sql = "UPDATE `tb_proposta` SET  id_proposta_status='" . PROPOSTA_STATUS_RECUSADO . "' where id = '$id_proposta' ";
            app('db')->update($sql);

            app('App\Http\Controllers\UsersController')
                ->sendNotification($dadosPropost[0]->id_user, "Sua proposta recusada pelo profissional",
                    array('id_proposta' => $id_proposta));

            return showSucess(['update' => true]);
        }

    }

    public function editProposta($user, $request)
    {

        $servico_id = $request->get('servico_id');
        $arrayEspecialidades = $request->get('arrayEspecialidades');
        $date = $request->get('date');
        $hora = $request->get('hora');
        $descricao = $request->get('descricao');

        $id = $request->get('id');
        $formatted_address = $request->get('formatted_address');
        $region = $request->get('region');
        $id_user_f = $request->get('id_user_f');

        if ($id == null) {
            return showError("id obrigatório");
        }

        if ($servico_id == null) {
            return showError("servico_id obrigatório");
        }

        if ($date == null) {
            return showError("date obrigatório");
        }

        if ($hora == null) {
            return showError("hora obrigatório");
        }

        if ($descricao == null) {
            return showError("descricao obrigatório");
        }

        if ($region == null) {
            $region = '';
        }

        if ($formatted_address == null) {
            $region = '';
        }

        if ($arrayEspecialidades == null) {
            $arrayEspecialidades = '';
        }

        $data_in = implode("-", array_reverse(explode("/", $date))) . " " . $hora . ":00";

        $sql = " SELECT id, id_user, id_user_f from `tb_proposta` where id = '$id'  ";
        $dadosPropost = app('db')->select($sql);

        $sql = " UPDATE tb_proposta SET
            lat_lng='$region',
            id_grupo='$servico_id', data_in='$data_in', obs='$descricao', grupo_categorias='$arrayEspecialidades',
            endereco='$formatted_address'
            WHERE id='$id' and (id_user='$user->id_user' or id_user_f='$user->id_user') ";

        if ($id_user_f != 'undefined') {
            $sql = " UPDATE tb_proposta SET
                lat_lng='$region', id_user_f='$id_user_f',
                id_grupo='$servico_id', data_in='$data_in', obs='$descricao', grupo_categorias='$arrayEspecialidades',
                endereco='$formatted_address'
                WHERE id='$id' and (id_user='$user->id_user' or id_user_f='$user->id_user') ";

            //se já existir profissional
            if ($dadosPropost[0]->id_user_f) {

                if ($dadosPropost[0]->id_user_f != $user->id_user) {

                    app('App\Http\Controllers\UsersController')
                        ->sendNotification($dadosPropost[0]->id_user_f,
                            "Uma proposta que voce é profissional, foi atualizada",
                            array('id_proposta' => $id));
                } else {

                    app('App\Http\Controllers\UsersController')
                        ->sendNotification($dadosPropost[0]->id_user,
                            "Uma proposta que voce é cliente, foi atualizada",
                            array('id_proposta' => $id));
                }

            } else {
                app('App\Http\Controllers\UsersController')
                    ->sendNotification($id_user_f, "Você foi selecionado em uma proposta",
                        array('id_proposta' => $id));
            }
        }

        app('db')->update($sql);

        return showSucess(
            [
                'proposta_id' => $id,
            ]
        );
    }

    public function getItem($user, $request)
    {

        $id_proposta = $request->get('id_proposta');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }
        
        $dados = \DB::table('tb_proposta as propost')->select(
            '*',

            \DB::raw(' (SELECT path FROM `tb_proposta_pictures` where id_proposta = propost.id)  as proposta_picture'),
            \DB::raw(' (SELECT nome FROM `tb_grupos_servicos` where id = propost.id_grupo)  as nome_servico'),

            \DB::raw(' if (propost.id_user > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user), null) as nome_cliente'),
            \DB::raw(' if (propost.id_user is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user), null) as foto_cliente'),
            \DB::raw(' if (propost.id_user is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user ), null) as media_stars_cliente'),

            \DB::raw(' if (propost.id_user_f > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user_f), null) as nome_profissional'),
            \DB::raw(' if (propost.id_user_f is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user_f), null) as foto_profissional'),
            \DB::raw(' if (propost.id_user_f is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user_f ), null) as media_stars_profissional'),

            \DB::raw(' if (propost.id_proposta_status is not null, (SELECT nome FROM tb_proposta_status WHERE id = propost.id_proposta_status), null) as nome_status')

        )
            ->whereRaw(\DB::raw("(  id_user =  $user->id_user or   id_user_f =  $user->id_user ) and id=$id_proposta "))
            ->orderBy('id', 'desc')
            ->whereNull('data_del')->get();

        // Especialidade Array
        if ($dados[0]->id_grupo != null && $dados[0]->id_grupo != '') {
            $grupo_categorias = explode(",", $dados[0]->grupo_categorias);

            if ($grupo_categorias[0] != "") {

                $sql = " SELECT id, nome  FROM tb_especialidades
                        WHERE  id_grupo = '" . $dados[0]->id_grupo . "' and
                        id in (" . $dados[0]->grupo_categorias . ")  ";

                $DBespecialidades = app('db')->select($sql);
                $dados[0]->servico_categoria = $DBespecialidades;
            }
        }

        return showSucess(
            [
                'proposta' => $dados[0],
            ]
        );
    }

    public function getList($user, $request)
    {

        $id_user = $user->id_user;

        $isClient = $request->get('isClient');

        if ($isClient == true) {
            $dados = \DB::table('tb_proposta as propost')->select(
                'id', 'id_user', 'id_user_f', 'data_in', 'endereco',

                \DB::raw(' (SELECT nome FROM `tb_grupos_servicos` where id = propost.id_grupo)  as nome_servico'),

                \DB::raw(' if (propost.id_user > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user), null) as nome_cliente'),
                \DB::raw(' if (propost.id_user > 0, (SELECT area FROM tb_users WHERE id = propost.id_user), null) as area_cliente'),
                \DB::raw(' if (propost.id_user > 0, (SELECT telefone FROM tb_users WHERE id = propost.id_user), null) as telefone_cliente'),

                \DB::raw(' if (propost.id_user is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user), null) as foto_cliente'),
                \DB::raw(' if (propost.id_user is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user ), null) as media_stars_cliente'),

                \DB::raw(' if (propost.id_user_f > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user_f), null) as nome_profissional'),
                \DB::raw(' if (propost.id_user_f > 0, (SELECT area FROM tb_users WHERE id = propost.id_user_f), null) as area_profissionak'),
                \DB::raw(' if (propost.id_user_f > 0, (SELECT telefone FROM tb_users WHERE id = propost.id_user_f), null) as telefone_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user_f), null) as foto_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user_f ), null) as media_stars_profissional'),

                \DB::raw(' if (propost.id_proposta_status is not null, (SELECT nome FROM tb_proposta_status WHERE id = propost.id_proposta_status), null) as nome_status')

            )
                ->whereRaw(\DB::raw("  id_user =  $id_user  "))
                ->orderBy('data_in', 'desc')
                ->whereNull('data_del')->paginate(3);
        } else {
            $dados = \DB::table('tb_proposta as propost')->select(
                'id', 'id_user', 'id_user_f', 'data_in', 'endereco',

                \DB::raw(' (SELECT nome FROM `tb_grupos_servicos` where id = propost.id_grupo)  as nome_servico'),

                \DB::raw(' if (propost.id_user > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user), null) as nome_cliente'),
                \DB::raw(' if (propost.id_user > 0, (SELECT area FROM tb_users WHERE id = propost.id_user), null) as area_cliente'),
                \DB::raw(' if (propost.id_user > 0, (SELECT telefone FROM tb_users WHERE id = propost.id_user), null) as telefone_cliente'),

                \DB::raw(' if (propost.id_user is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user), null) as foto_cliente'),
                \DB::raw(' if (propost.id_user is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user ), null) as media_stars_cliente'),

                \DB::raw(' if (propost.id_user_f > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user_f), null) as nome_profissional'),
                \DB::raw(' if (propost.id_user_f > 0, (SELECT area FROM tb_users WHERE id = propost.id_user_f), null) as area_profissionak'),
                \DB::raw(' if (propost.id_user_f > 0, (SELECT telefone FROM tb_users WHERE id = propost.id_user_f), null) as telefone_profissional'),

                \DB::raw(' if (propost.id_user_f is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user_f), null) as foto_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user_f ), null) as media_stars_profissional'),

                \DB::raw(' if (propost.id_proposta_status is not null, (SELECT nome FROM tb_proposta_status WHERE id = propost.id_proposta_status), null) as nome_status')

            )
                ->whereRaw(\DB::raw("  id_user_f =  $id_user  "))
                ->orderBy('data_in', 'desc')
                ->whereNull('data_del')->paginate(3);
        }

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function getListFull($user, $request)
    {

        $id_user = $user->id_user;

        $isClient = $request->get('isClient');

        if ($isClient == true) {
            $dados = \DB::table('tb_proposta as propost')->select(
                'id', 'id_user', 'id_user_f', 'data_in', 'endereco',

                \DB::raw(' (SELECT nome FROM `tb_grupos_servicos` where id = propost.id_grupo)  as nome_servico'),

                \DB::raw(' if (propost.id_user > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user), null) as nome_cliente'),
                \DB::raw(' if (propost.id_user is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user), null) as foto_cliente'),
                \DB::raw(' if (propost.id_user is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user ), null) as media_stars_cliente'),

                \DB::raw(' if (propost.id_user_f > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user_f), null) as nome_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user_f), null) as foto_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user_f ), null) as media_stars_profissional'),

                \DB::raw(' if (propost.id_proposta_status is not null, (SELECT nome FROM tb_proposta_status WHERE id = propost.id_proposta_status), null) as nome_status')

            )
                ->whereRaw(\DB::raw("  id_user =  $id_user  and data_in > NOW() "))
                ->orderBy('data_in', 'desc')
                ->whereNull('data_del')->get();
        } else {
            $dados = \DB::table('tb_proposta as propost')->select(
                'id', 'id_user', 'id_user_f', 'data_in', 'endereco',

                \DB::raw(' (SELECT nome FROM `tb_grupos_servicos` where id = propost.id_grupo)  as nome_servico'),

                \DB::raw(' if (propost.id_user > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user), null) as nome_cliente'),
                \DB::raw(' if (propost.id_user is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user), null) as foto_cliente'),
                \DB::raw(' if (propost.id_user is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user ), null) as media_stars_cliente'),

                \DB::raw(' if (propost.id_user_f > 0, (SELECT nome FROM tb_users WHERE id = propost.id_user_f), null) as nome_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, (SELECT img_url FROM tb_users WHERE id = propost.id_user_f), null) as foto_profissional'),
                \DB::raw(' if (propost.id_user_f is not null, ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=propost.id_user_f ), null) as media_stars_profissional'),

                \DB::raw(' if (propost.id_proposta_status is not null, (SELECT nome FROM tb_proposta_status WHERE id = propost.id_proposta_status), null) as nome_status')

            )
                ->whereRaw(\DB::raw("  id_user_f =  $id_user and data_in > NOW() "))
                ->orderBy('data_in', 'desc')
                ->whereNull('data_del')->get();
        }

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function statusList($user, $request)
    {

        $id_user = $user->id_user;
        $id_proposta = $request->get('id_proposta');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }

        $sql = " SELECT id, id_user, id_user_f from `tb_proposta` where id = '$id_proposta' and  (id_user='$id_user' or id_user_f='$id_user') ";
        $dadosPropost = app('db')->select($sql);

        $isClient = $dadosPropost[0]->id_user == $id_user;

        if ($isClient === true) {
            $dados = \DB::table('tb_proposta_status')
                ->select('*')
                ->orderBy('id', 'desc')
                ->where('id', '=', '4')
                ->whereNull('data_del')->paginate(20);
        } else {
            $dados = \DB::table('tb_proposta_status')
                ->select('*')
                ->orderBy('id', 'desc')
                ->whereRaw(\DB::raw("   id in(4,3,2) "))
                ->whereNull('data_del')->paginate(20);
        }

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function selecionarProfissional($user, $request)
    {

        $id_user = $user->id_user;
        $id_proposta = $request->get('id_proposta');
        $search = $request->get('search');

        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }

        //Checa se tem email cadastrado
        $sql = " SELECT id, lat_lng, id_grupo from `tb_proposta` where id = '$id_proposta' and  id_user='$id_user' ";
        $dados = app('db')->select($sql);

        if (!isset($dados[0])) {
            return showError("Proposta não encontrada");
        }

        if ($dados[0]->lat_lng == 'null') {
            return showError("Informe o endereço da proposta para buscar profissionais qualificados");
        }

        $id_grupo = $dados[0]->id_grupo;
        $lat_lng = json_decode($dados[0]->lat_lng);
        if ($lat_lng == null) {
            return showError("Informe o endereço da proposta para buscar profissionais qualificados");
        }

        $latitude = $lat_lng->latitude;

        $dados = \DB::table('tb_users as user')
            ->select('id', 'nome', 'img_url', 'telefone', 'area',
                \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=user.id ) as media_stars'),
                \DB::raw(' ( 6371 * acos( cos( radians( "' . $latitude . '") ) * cos( radians( lat ) ) * cos( radians( lng ) - radians(lng) ) + sin( radians(  "' . $latitude . '" ) ) * sin( radians( lat ) ) ) ) AS distance')
            )
            ->whereRaw(\DB::raw("   FIND_IN_SET('$id_grupo' , id_grupo) > 0 "))
            ->whereRaw(\DB::raw("   (SELECT sum(dias) as dias from tb_banco where id_user = user.id ) > 0 ")) // consulta usuários pagantes
            ->orderBy('distance', 'desc')
            ->orderBy('id', 'desc')
            ->whereNull('data_del')->paginate(5);

        if ($search) {
            $dados = \DB::table('tb_users as user')
                ->select('id', 'nome', 'img_url', 'telefone', 'area',
                    \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=user.id ) as media_stars'),
                    \DB::raw(' ( 6371 * acos( cos( radians( "' . $latitude . '") ) * cos( radians( lat ) ) * cos( radians( lng ) - radians(lng) ) + sin( radians(  "' . $latitude . '" ) ) * sin( radians( lat ) ) ) ) AS distance')
                )
                ->where('nome', 'like', "%{$search}%")
                ->whereRaw(\DB::raw("   FIND_IN_SET('$id_grupo' , id_grupo) > 0 "))
                ->whereRaw(\DB::raw("   (SELECT sum(dias) as dias from tb_banco where id_user = user.id ) > 0 ")) // consulta usuários pagantes
                ->orderBy('distance', 'desc')
                ->orderBy('id', 'desc')
                ->whereNull('data_del')->paginate(5);
        }

        return showSucess(
            [
                'list' => $dados,
            ]
        );

    }

    public function selecionarProfissionalLand($request)
    {

        $search = $request->get('search');
        $id_grupo = $request->get('grupo');

        $dados = \DB::table('tb_users as user')
            ->select('id', 'nome', 'img_url', 'telefone', 'area',
                \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=user.id ) as media_stars'))
            ->whereRaw(\DB::raw("   FIND_IN_SET('$id_grupo' , id_grupo) > 0 "))
            ->whereRaw(\DB::raw("   (SELECT sum(dias) as dias from tb_banco where id_user = user.id ) > 0 ")) // consulta usuários pagantes
            ->orderBy('id', 'desc')
            ->whereNull('data_del')->paginate(5);

        if ($search) {
            $dados = \DB::table('tb_users as user')
                ->select('id', 'nome', 'img_url', 'telefone', 'area',
                    \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=user.id ) as media_stars'))
                ->where('nome', 'like', "%{$search}%")
                ->whereRaw(\DB::raw("   FIND_IN_SET('$id_grupo' , id_grupo) > 0 "))
                ->whereRaw(\DB::raw("   (SELECT sum(dias) as dias from tb_banco where id_user = user.id ) > 0 ")) // consulta usuários pagantes
                ->orderBy('id', 'desc')
                ->whereNull('data_del')->paginate(5);
        }

        return showSucess(
            [
                'list' => $dados,
            ]
        );

    }

    public function newImageProposta($user, $request)
    {

        $id_proposta = $request->get('id_proposta');
        if ($id_proposta == null) {
            return showError("id_proposta obrigatório");
        }
        

        if ($request->file('photo') == null || !$request->file('photo')->isValid()) {
            return showError("Imagem inválida");
        }

        $originalName = imageNameRebuild($request->file('photo')->getClientOriginalName());
        $destination = './public'; 

        $typeInString = explode(".", $originalName)[1];
        
        if ($typeInString != 'jpg' && $typeInString != 'jpeg') {
            return showError("Apenas imagens JPG/JPEG são permitidas!");
        }

        compress_image($request->file('photo'), $destination . '/' . $originalName, 80, 80, 40);


        //Deleta Imagem anterior caso exista
        $sql = " SELECT path from `tb_proposta_pictures` where id_proposta = '$id_proposta' ";
        $dados = app('db')->select($sql);

        if (isset($dados[0]) && isset($dados[0]->path)
            && strpos($dados[0]->path, "/") >= 0) {

            if (is_file($destination . '/' . $dados[0]->path)) {
                unlink($destination . '/' . $dados[0]->path);
            } 

            $sql = " DELETE from  `tb_proposta_pictures`  where id_proposta = '$id_proposta' ";
            app('db')->delete($sql);
        }

        //Atualiza novo link
        $sql = " INSERT `tb_proposta_pictures` (path, id_proposta ) values ('$originalName', '$id_proposta') "; 
        app('db')->insert($sql);

        return showSucess('ok');
    }

}

function cancelProposal($id_proposta, $msg = null, $id_user = null)
{
    $sql = "UPDATE `tb_proposta` SET  id_proposta_status='" . PROPOSTA_STATUS_CANCELADO . "' where id = '$id_proposta' ";
    app('db')->update($sql);

    if ($msg && $id_user) {
        app('App\Http\Controllers\UsersController')
            ->sendNotification($id_user, $msg,
                array('id_proposta' => $id_proposta));
    }

    return showSucess(['update' => true]);
}

function breakRulles_cancel($id_user, $obs, $id_proposta)
{
    $_break_text[] = "Atenção, cancelamentos fora do intervalo permitido podem haver consequências! Mais 1 cancelamentos fora do intervalo permitido e você será impossibilitado de usar o aplicativo, até pagar o valor da multa!";
    $_break_text[] = "Atenção, o próximo cancelamento fora do intervalo permitido, você será multado!";
    $_break_text[] = "Atenção, você realizou 3 cancelamentos fora do intervalo permitido. Você foi multado! Enquanto não pagar sua multa, será impossibilitado de utilizar o aplicativo.";

    $sql = "SELECT COUNT(id) as count FROM `tb_break_rulles` where id_user = $id_user AND data_del is null ";
    $dados = app('db')->select($sql);

    if ($obs && $id_user) {

        if ($dados[0]->count > 1) {
            $dados[0]->count = 2;

            $sql = " UPDATE `tb_break_rulles` set data_del=NOW() WHERE id_user ='$id_user' ";
            app('db')->update($sql);

            // Multando
            $obs_multa = "Multa por excesso de cancelamentos fora do intervalo permitido ";
            $sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, data_cad) values
                                             ('$obs_multa', '$id_user', '" . VALOR_DIAS_MULTA . "', '" . VALOR_DIAS_MULTA . "', NOW() ) ";
            app('db')->insert($sql);
        } else {
            $sql = " INSERT INTO `tb_break_rulles`(`id_user`, `obs`) VALUES ('$id_user', '$obs')";
            app('db')->insert($sql);
        } 

            app('App\Http\Controllers\UsersController')
                ->sendNotification($id_user, $_break_text[$dados[0]->count],
                    array('id_proposta' => $id_proposta));
    }
}

 