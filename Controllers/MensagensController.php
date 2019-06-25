<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class MensagensController extends BaseController
{

    public function getList($user)
    {

        $id_user = $user->id_user; 
        $subqueryMaxid = ' FROM tb_reclamacoes where id = (SELECT MAX(id) from tb_reclamacoes where id_proposta = rcl.id_proposta and data_del is null  )';
        
        $dados = \DB::table('tb_reclamacoes as rcl')->select( 'id_proposta',
        
            \DB::raw(' (SELECT obs  '. $subqueryMaxid .') as obs '),
            \DB::raw(' (SELECT visto  '. $subqueryMaxid .') as visto '),
            \DB::raw(' (SELECT data_cad  '. $subqueryMaxid .') as data_cad '),
            \DB::raw(' (SELECT nome FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as nome_user '),
            \DB::raw(' (SELECT id FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as id_user '),
            \DB::raw(' (SELECT img_url FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as foto_user ')
        )
        ->whereRaw(\DB::raw(" id_proposta in ( SELECT id FROM tb_proposta where (id_user = '$id_user' or id_user_f = '$id_user')) "))
        ->whereNull('data_del')
        ->groupBy('id_proposta') 
        ->paginate(5);

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function getListFrom($user, $request)
    {

        $id_user = $user->id_user;
        $id_proposta = explode("/", $request->path())[1];

        if(!is_numeric($id_proposta))
        return showError("id proposta inválida não encontrado!");


        //onesignal rulles
        $sqlgetUs = " UPDATE tb_reclamacoes SET visto=1  WHERE id_proposta='$id_proposta' and id_user != '$id_user' ";
        app('db')->update($sqlgetUs);

        $dados = \DB::table('tb_reclamacoes as rcl')->select(
            
            '*',

            \DB::raw(' (SELECT nome FROM tb_users where id=rcl .id_user) as nome_user '),
            \DB::raw(' (SELECT id FROM tb_users where id=rcl .id_user) as id_user '),
            \DB::raw(' (SELECT img_url FROM tb_users where id=rcl .id_user) as foto_user ')
 

        )->whereRaw(\DB::raw("id_proposta= '$id_proposta'  order by id desc "))
        ->paginate(4); 
        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function newMessage($user, $request)
    {

        $id_user = $user->id_user;
        $id_proposta = explode("/", $request->path())[1];

        if(!is_numeric($id_proposta))
        return showError("id proposta inválida não encontrado!");

        if(!$request->get('obs'))
        return showError("mensagem obrigatória!");

        $obs= $request->get('obs');
        
 
            $sql = " INSERT INTO `tb_reclamacoes` (obs, id_user, id_proposta, data_cad )
            VALUES ('$obs','$id_user','$id_proposta',  NOW()) ";


                //onesignal rulles
                $sqlgetUs = " SELECT id_user_f, id_user,
                    (SELECT nome FROM tb_users WHERE id = propost.id_user) as nome_user,
                    (SELECT nome FROM tb_users WHERE id = propost.id_user_f) as nome_user_f

                 FROM  tb_proposta propost  WHERE id='$id_proposta'";

                $dados = app('db')->select($sqlgetUs);
                $msgpush = '';
                $idPush = null;
                $nomePush = null;
 
                if($dados[0]->id_user_f != $id_user) {
                    $idPush = $dados[0]->id_user_f;
                    $nomePush = $dados[0]->nome_user;
                }           
                else {
                    $idPush = $dados[0]->id_user;  
                    $nomePush = $dados[0]->nome_user_f; 
                }                     
                
                $msgpush = $nomePush.': '.$obs;
                app('App\Http\Controllers\UsersController')->sendNotification($idPush, $msgpush, array('id_proposta_msg'=>$id_proposta) );

            app('db')->insert($sql);

     
        return showSucess(
            [
                'newMessage' => true,
            ]
        );
    }
}
