<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class FavoritosController extends BaseController
{
    public function listaFavoritos($user)
    {

        $id_user = $user->id_user;

		$dados = \DB::table('tb_favoritos as fav')
			->where('fav.id_user', $id_user)
			->join('tb_users', 'tb_users.id', '=', 'fav.id_user_f')
			->select('fav.id_user_f','tb_users.id', 'tb_users.nome', 'tb_users.img_url', 'tb_users.telefone', 'tb_users.area',
				\DB::raw(' ( SELECT  SUM(stars)/COUNT(stars) FROM tb_avaliacao where id_user_f=fav.id_user_f ) as media_stars')
			)
			->orderBy('fav.id_user_f', 'desc')
			->whereNull('fav.data_del')->paginate(5);

        return showSucess(
            [
                'list' => $dados,
            ]
        );

    }

    public function setFavoritoPerfil($user, $request)
    {
 
            $id_user   = $user->id_user;      
            $id_user_f = $request->get('id_user_f');
            $status    = $request->get('status');

            if(!$id_user_f)
            return showError("id usuário obrigatório");
		
			$contaFav = 0;
			$sqlFav = " SELECT id from `tb_favoritos` where id_user = '$id_user' AND id_user_f = '$id_user_f'";
			$dadosFav = app('db')->select($sqlFav);
			$contaFav = count($dadosFav);
 
			if($status==0 and $contaFav==0){
				$sql = "INSERT INTO tb_favoritos (id_user, id_user_f, data_cad) VALUES
												('$id_user', '$id_user_f', NOW()) 
				";
				app('db')->insert($sql);
			}elseif($status==1 and $contaFav>0){
				app('db')->update("UPDATE tb_favoritos set data_del=NOW() where id_user = '$id_user' AND id_user_f = '$id_user_f'");
			}elseif($status==0 and $contaFav>0){
				app('db')->update("UPDATE tb_favoritos set data_del=NULL where id_user = '$id_user' AND id_user_f = '$id_user_f'");
			}
			
            return showSucess( [ 'favorito' => true ] );
    }
}
