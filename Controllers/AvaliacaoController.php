<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class AvaliacaoController extends BaseController
{
    public function getAvaliacaoPerfil($user, $request)
    {

        if ($request->get('id_user') == null) {
            $id_user = $user->id_user;
        } else {
            $id_user = $request->get('id_user');
        }

        ####  colunas depreciadas
        /**
         * id_genero
         * grupo_categorias
         * mei
         * id_type_orcam
         * valor
         * aceita_cartao
         * id_cartoes
         * cobra_visita
         * data_start
         * data_out
         */

        

        $perfilDados = \DB::table('tb_users as user')->select(
            'id as id_user','nome', 'id_grupo', 'data_cad', 'email', 'area', 'telefone', 'obs', 'img_url', 'mei', 'endereco', 'cobra_visita', 'aceita_cartao', 'id_cartoes',
            \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=' . $id_user . ' ) as media_stars '),
            \DB::raw(' ( SELECT count(id) as count_avaliacao FROM `tb_avaliacao` where id_user = '.$user->id_user.' and id_user_f=' . $id_user . ' ) as count_i_evaluated ')           

        )->where('id', '=', $id_user)->whereNull('data_del')->get();

        $nome_grupo = [];
        
        $perfilDados[0]->app_id = strtotime($perfilDados[0]->data_cad);
		
		$fav = \DB::select('select * from tb_favoritos where id_user = :id_user AND id_user_f = :id_user_f', ['id_user' => $user->id_user, 'id_user_f' => $request->get('id_user')]);
		
		if($fav){		
			if($fav[0]->data_del){
				$perfilDados[0]->favorito = 0;
			}else{
				$perfilDados[0]->favorito = 1;
			}
		}else{
			$perfilDados[0]->favorito = 0;
		}
		
		$perfilDados[0]->IDUser1 = $user->id_user;
		$perfilDados[0]->IDUser2 = $request->get('id_user');

        if ($perfilDados && $perfilDados[0]->id_grupo) {
            $id_grupo = explode(",", $perfilDados[0]->id_grupo);

            foreach ($id_grupo as $value) {
                $sql = "SELECT nome FROM  tb_grupos_servicos WHERE id =  '$value' ";
                if (app('db')->select($sql)) {
                    $nome_grupo[] = app('db')->select($sql)[0]->nome;
                }

            }

            if (sizeof($nome_grupo) > 0) {
                $nome_grupo = implode(", ", $nome_grupo);
            }

            $perfilDados[0]->nome_grupo = $nome_grupo;
        }

        $avaliacaoList = \DB::table('tb_avaliacao as av')->select(
            '*',
            \DB::raw(' ( SELECT id FROM tb_users WHERE id = av.id_user) as id_remetente'),
            \DB::raw(' ( SELECT nome FROM tb_users WHERE id = av.id_user) as nome_remetente'),
            \DB::raw(' ( SELECT img_url FROM tb_users WHERE id = av.id_user) as foto_remetente')
        )
            ->where('id_user_f', '=', $id_user)
            ->whereNull('data_del')
            ->orderBy('id', 'desc')
            ->paginate(5);

        return showSucess(
            [
                'perfil' => $perfilDados,
                'list' => $avaliacaoList,
            ]

        );
    }

    public function getAvaliacaoPerfilLand($request)
    {

        $id_user = $request->get('id_user');

        ####  colunas depreciadas
        /**
         * id_genero
         * grupo_categorias
         * mei
         * id_type_orcam
         * valor
         * aceita_cartao
         * id_cartoes
         * cobra_visita
         * data_start
         * data_out
         */

        

        $perfilDados = \DB::table('tb_users as user')->select(
            'id as id_user','nome', 'id_grupo', 'data_cad', 'email', 'area', 'telefone', 'obs', 'img_url', 'mei', 'fisica_juridica',  'endereco', 'cobra_visita', 'aceita_cartao', 'id_cartoes',
            \DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=' . $id_user . ' ) as media_stars ')           

        )->where('id', '=', $id_user)->whereNull('data_del')->get();

        return showSucess(
            [
                'perfil' => $perfilDados
            ]

        );
    }

    public function setAvaliacaoPerfil($user, $request)
    {
 
            $id_user = $user->id_user;      
            $id_user_f = $request->get('id_user_f');
            $obs = $request->get('obs');
            $stars = $request->get('stars');

            if(!$id_user_f)
            return showError("id usuário obrigatório");

            if(!$obs)
            return showError("observação obrigatório");

            if(!$stars)
            return showError("pontos de avaliação obrigatório");
 
     
            $sql = "INSERT INTO tb_avaliacao (obs, id_user, id_user_f, stars, data_cad) VALUES
                                            ('$obs', '$id_user', '$id_user_f', '$stars', NOW()) 
            ";
            app('db')->insert($sql);

            $msgpush = 'Você recebeu uma nova avaliação em seu perfíl';
            app('App\Http\Controllers\UsersController')->sendNotification($id_user_f, $msgpush, array('PerfilProfissional' => true));

            return showSucess( [ 'avaliacao' => true ] );
    }
}
