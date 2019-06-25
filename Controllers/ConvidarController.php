<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class ConvidarController extends BaseController
{

    public function getCupom($user)
    {
 
            $id_user   = $user->id_user;      

            if(!$id_user)
            return showError("id usuário obrigatório"); 
		
			$contaFav = 0;
			$mes      = date('m');
			
			$sqlFav   = " SELECT id from `tb_cupom` where id_user = '$id_user' AND mes = '$mes' AND tipo='0'";
			$dadosFav = app('db')->select($sqlFav);
			$contaFav = count($dadosFav);
			
			$limite = \DB::table('tb_multa')->select('limite_bonus')->get();
			
			//var_dump($limite);
			
			if($contaFav<=$limite[0]->limite_bonus){
				
				$cupom = strtoupper(str_random(6));
				
				$sql = "INSERT INTO tb_cupom (id_user, cupom, mes, tipo, data_cad) VALUES
												('$id_user', '$cupom', '$mes', '0', NOW()) 
				";
				app('db')->insert($sql);
				
				return showSucess( [ 'cupom' => true, 'Ncupom' => $cupom, 'total' => $contaFav ] );
			}else{
				return showSucess( [ 'cupom' => false, 'Ncupom' => '', 'total' => 0 ] ); 
			}
			
            
    }
	
	public function getCupomShare($user)
    {
		$id_user   = $user->id_user;      

		if(!$id_user)
		return showError("id usuário obrigatório"); 
	
		$contaFav = 0;
		$mes      = date('m');
		
		$sqlFav   = " SELECT id, cupom from `tb_cupom` where id_user = '$id_user' AND tipo = '1' AND data_del IS NULL ORDER BY id DESC";
		$dadosFav = app('db')->select($sqlFav);
		$contaFav = count($dadosFav);
		
		if($contaFav>0){
			$cupom = $dadosFav[0]->cupom;
			return showSucess( [ 'cupom' => true, 'Ncupom' => $cupom, 'total' => $contaFav ] );
		}else{
			$cupom = strtoupper(str_random(6));
			$sql = "INSERT INTO tb_cupom (id_user, cupom, mes, tipo, data_cad) VALUES
											('$id_user', '$cupom', '$mes', '1',NOW()) ";
			app('db')->insert($sql);
			return showSucess( [ 'cupom' => true, 'Ncupom' => $cupom, 'total' => $contaFav ] );
		}			
    }
	
	public function validaCupom($request)
    {  	    
			$cupomup  = strtoupper($request->get('cupom'));
			$sqlFav   = " SELECT id from `tb_cupom` where cupom = '$cupomup'";
			$dadosFav = app('db')->select($sqlFav);
			$contaFav = count($dadosFav);
			
			if($contaFav>0){				
				return showSucess( [ 'cupom' => true, 'Ncupom' => $cupomup ] );
			}else{
				return showError("Cupom Inválido"); 
			}
    }
}
