<?php

namespace App\Http\Controllers;

use App\Users;
use Illuminate\Http\Request;

setlocale(LC_ALL, 'pt_BR');

class UsersController extends Controller
{

    protected $users;
    protected $request;
    protected $headers;

    public function __construct(Users $users, Request $request)
    {
        $this->users = $users;
        $this->request = $request; //return $this->request->headers->all();
    }

    public function getUser($id)
    {return $this->users->getCliente($id);}

    public function setImageProfile($user, $request)
    {

        if ($request->file('photo') == null || !$request->file('photo')->isValid()) {
            return showError("Imagem inválida");
        }

        $originalName = imageNameRebuild($request->file('photo')->getClientOriginalName());
        $destination = './public'; 

        $typeInString = explode(".", $originalName)[1];
        
        if ($typeInString != 'jpg' && $typeInString != 'jpeg') {
            return showError("Apenas imagens JPG/JPEG são permitidas!");
        }

        compress_image($request->file('photo'), $destination . '/' . $originalName, 40, 20, 70);

        $id_user = $user[0]->id_user;

        //Deleta Imagem anterior caso exista
        $sql = " SELECT img_url from `tb_users` where id = '$id_user' ";
        $dados = app('db')->select($sql);

        if (isset($dados[0]) && isset($dados[0]->img_url)
            && strpos($dados[0]->img_url, "/") >= 0) {

            if (is_file($destination . '/' . $dados[0]->img_url)) {
                unlink($destination . '/' . $dados[0]->img_url);
            }

        }

        //Atualiza novo link
        $sql = " UPDATE `tb_users` set img_url='$originalName' where id = '$id_user' ";
        app('db')->update($sql);

        return showSucess('ok');
    }

    public function updateClienteInfo($user, $request)
    {

        $id_user = $user[0]->id_user;

        $nome = $request->get('nome');
        $area = $request->get('ddd');
        $telefone = $request->get('telefone');
        $senha = $request->get('senha');

        if ($nome == null) {
            return showError("nome obrigatório");
        }

        if ($area == null) {
            return showError("ddd obrigatório");
        }

        if ($telefone == null) {
            return showError("telefone obrigatório");
        }

        if ($senha == null) {
            $sql = " UPDATE `tb_users` set nome='$nome', area='$area', telefone='$telefone' where id = '$id_user' ";
        } else {
            $sql = " UPDATE `tb_users` set  nome='$nome', senha='" . md5($senha) . "', area='$area', telefone='$telefone' where id = '$id_user' ";
        }

        app('db')->update($sql);

        return showSucess(
            [
                'user_update' => true,
            ]
        );
    }

    public function clienteRegister($request)
    {

        $nome = $request->get('nome');
        $area = $request->get('ddd');
        $telefone = $request->get('telefone');
        $email = $request->get('email');
        $senha = $request->get('senha');
		$cupom = $request->get('cupom');
		
		if($cupom == null){
			$cupom = $request->get('cupomB');
		}

        if ($nome == null) {
            return showError("nome obrigatório");
        }

        if ($area == null) {
            return showError("ddd obrigatório");
        }

        if ($telefone == null) {
            return showError("telefone obrigatório");
        }

        if ($email == null) {
            return showError("email obrigatório");
        }

        if ($senha == null) {
            return showError("senha obrigatório");
        }

        //Checa se tem email cadastrado
        $sql = " SELECT id from `tb_users` where email = '$email' ";
        $dados = app('db')->select($sql);

        if (isset($dados[0])) {
            return showError("email já cadastrado");
        }

        $sql = " INSERT INTO `tb_users` (nome, area, telefone, senha, email, data_cad) values ('$nome', '$area', '$telefone', '" . md5($senha) . "', '$email', NOW() ) ";
        app('db')->insert($sql);
		
		
		function getPositiveValue_($id_user, $valueResult = 0)
		{
			//Função para trazer o saldo positivo, podendo ser reutilizada em outros casos
			$dados = \DB::table('tb_banco')
				->select('id',
					\DB::raw(' sum(dias) as dias '),
					\DB::raw(' sum(valor) as valor ')
				)
				->whereRaw(\DB::raw(" id_user = '" . $id_user . "'"))
				->orderBy('id', 'desc')
				->whereNull('data_del')->get();

				if ($dados[0]->dias && $dados[0]->valor){

					$dados[0]->dias = round($dados[0]->dias, 2);
					$dados[0]->valor = round($dados[0]->valor, 2); 

					if ($valueResult > 0) {
						$valueResult = round($valueResult, 2); 
			
						$dados[0]->valorResultante = $dados[0]->valor - $valueResult;
						$dados[0]->diasSubtraidos = ($dados[0]->dias * $valueResult) / $dados[0]->valor;
					}

				}
				
			   
			return $dados;
		}
		
		if ($cupom != null) {
			
			$sqlCupom = " SELECT * from `tb_cupom` where cupom = '$cupom'";
			$dadosCupom = app('db')->select($sqlCupom);
			
			if (isset($dadosCupom[0])) {
				
				$sqlNew = " SELECT id, data_cad from `tb_users` where email = '$email'";
				$dadosNew = app('db')->select($sqlNew);
				
				$id_user_f = $dadosNew[0]->id;
				$iduserf   = strtotime($dadosNew[0]->data_cad);
			
				$configdados = \DB::table('tb_multa')->select('vl_bonus')->get();
				$value = $configdados[0]->vl_bonus;
				
				$id_user = $dadosCupom[0]->id_user;
				
				$sqlNewc = " SELECT id, data_cad from `tb_users` where id = '$id_user'";
			    $dadosNewc = app('db')->select($sqlNewc);
				$iduser    = strtotime($dadosNewc[0]->data_cad);
				
				$dadosRESP = getPositiveValue_($id_user, $value);
				$dadosBENE = $dadosRESP[0]->diasSubtraidos;
				
				if($dadosCupom[0]->tipo==0){
				
					// CRÉDITO PRO USUÁRIO NOVO
					$obs_responsavel = "Crédito recebido do novo amigo " . $iduserf;
					$sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, data_cad) values
													('$obs_responsavel', '$id_user', '$value', '$dadosBENE', NOW() ) ";
					app('db')->insert($sql);
					
					app('App\Http\Controllers\UsersController')->sendNotification($id_user, "$obs_responsavel");

					// CRÉDITO PARA O AMIGO
					$obs_beneficiado = "Crédito recebido do seu amigo " . $iduser;
					$sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, data_cad) values
													('$obs_beneficiado', '$id_user_f', '$value', '$dadosBENE', NOW() ) ";
					app('db')->insert($sql);
					
					app('App\Http\Controllers\UsersController')->sendNotification($id_user_f, "$obs_beneficiado");
				}
				
				$sqlVerc = " SELECT id, data_cad, id_user from `tb_user_friends` where id_user_f = '$id_user'";
			    $dadosVerc = app('db')->select($sqlVerc);
				
				if(isset($dadosVerc[0])){
					$sql = " INSERT INTO `tb_user_friends` (id_user, id_user_f, type,data_cad) values
                                                ('".$dadosVerc[0]->id_user."', '".$id_user_f."', '2', NOW() ) ";
					app('db')->insert($sql);
				}
				
				//ADICIONA AMIZADE
				$sql = " INSERT INTO `tb_user_friends` (id_user, id_user_f, type,data_cad) values
                                                ('$id_user', '$id_user_f', '1', NOW() ) ";
                app('db')->insert($sql);
				
				app('db')->update("UPDATE tb_cupom set id_user_f = '$id_user_f' where cupom = '$cupom'");

			}
		}

        return showSucess(
            [
                'register' => true,
            ]
        );
    }

    public function updateEmpresaInfo($user, $request)
    {

        $id_user = $user[0]->id_user;

        $servico_categoria = $request->get('servico_categoria'); //grupo_categorias | id_grupo
        $cardChecked = $request->get('cardChecked'); //id_cartoes
        $receb_c_cartao = $request->get('receb_c_cartao'); //aceita_cartao
        $descricao = $request->get('descricao'); //obs
        $formatted_address = $request->get('formatted_address');
        $mei = $request->get('mei');
        $cobra_visita = $request->get('cobra_visita');
        $findme = $request->get('findme');

        $lng = $request->get('lng');
        $lat = $request->get('lat');

        if ($lng == null) {
            $lng = '';
        }

        if ($lat == null) {
            $lat = '';
        }

        if ($formatted_address == null) {
            $formatted_address = '';
        }

        $servico = [];
        $especialidades = [];

        //Alimentando e verificando duplicidade
        foreach ($servico_categoria as $value) {

            if (!in_array($value['id'], $servico)) {
                $servico[] = $value['id'];
            }

            if (isset($value['especialidades'])) {
                foreach ($value['especialidades'] as $valueEs) {
                    if (!in_array($valueEs['id'], $especialidades)) {
                        $especialidades[] = $valueEs['id'];
                    }

                }
            }
        }

        $servico = implode(",", $servico);
        $especialidades = implode(",", $especialidades);
        $cardChecked = implode(",", $cardChecked);
        $receb_c_cartao = ($receb_c_cartao == true) ? 1 : 0;

        $sql = " UPDATE `tb_users` set

                        mei='$mei', cobra_visita='$cobra_visita',
                        id_cartoes='$cardChecked', grupo_categorias='$especialidades',
                        id_grupo='$servico', lat='$lat', lng='$lng', endereco='$formatted_address',
                        obs='$descricao', aceita_cartao='$receb_c_cartao',
                        findme='$findme' where id = '$id_user' ";

        app('db')->update($sql);

        return showSucess(
            [
                'empresa_update' => true,
            ]
        );

    }

    public function setOnesignalId($user, $request)
    {
        if ($request->get('onesignal_id') == null) {
            return showError("variável one signal não encontrada!");
        }

        $onesignal_id = $request->get('onesignal_id');

        $sql = " UPDATE `tb_users` set id_onsignal='$onesignal_id'
        where id = '$user->id_user' ";
        app('db')->update($sql);

        return showSucess(
            [
                'one_signal_change' => true,
            ]
        );
    }

    public function set_forguetPassword($request)
    {

        if ($request->get('token_forguetpassword') == null) {
            return showError("variável token não encontrada!");
        }

        if ($request->get('senha') == null) {
            return showError("variável senha não encontrada!");
        }

        $sql = " SELECT id from `tb_users`
            where token_forguetpassword='" . $request->get('token_forguetpassword') . "'   ";

        $dados = app('db')->select($sql);

        if (!$dados) {
            return showError("Usuário não encontrado por esse token");
        }

        $token_forguetpassword = substr(rand() . $dados[0]->id, 0, 7);

        $sql = " UPDATE `tb_users` set senha='" . md5($request->get('senha')) . "', token_forguetpassword = ''
                    where token_forguetpassword='" . $request->get('token_forguetpassword') . "'  ";

        app('db')->update($sql);
        app('App\Http\Controllers\UsersController')->sendNotification($dados[0]->id,
            'Nova senha gerada, entre em sua conta usando sua nova senha!');

        return showSucess('ok');
    }

    public function forguetPassword($request)
    {
        if ($request->get('onesignal_id') == null) {
			return showError("Variável Token do Aparelho não encontrada!");
        }
		
		//else{ $onesignal_id = $request->get('onesignal_id'); }
		
        if ($request->get('email') == null) {
            return showError("variável e-mail não encontrada!");
        }

        $sql = " SELECT id from `tb_users`
            where email='" . $request->get('email') . "' AND id_onsignal='" . $request->get('onesignal_id') . "' ";

        $dados = app('db')->select($sql);

        if (!$dados) {
            return showError("E-mail não encontrado ou esse aparelho não foi utilizado com essa conta!\n\nSomente o último aparelho utilizado com essa conta que que poderá trocar de senha.");
        }

        $token_forguetpassword = substr(rand() . $dados[0]->id, 0, 7);

        $sql = " UPDATE `tb_users` set  token_forguetpassword='$token_forguetpassword'
            where 
            email='" . $request->get('email') . "' AND id_onsignal='" . $request->get('onesignal_id') . "' ";

        app('db')->update($sql);
        app('App\Http\Controllers\UsersController')->sendNotification($dados[0]->id,
            'Código: ' . $token_forguetpassword . ', digite no campo informado para prosseguir com a atualização da senha',
            array('token_forguetpassword' => $token_forguetpassword)
        );

        return showSucess('ok');
    }

    public function sendNotification($id_user, $msg, $json = array())
    {

        $sql = " SELECT id_onsignal from `tb_users` where id='$id_user'  ";
        $dados = app('db')->select($sql);

        $sql2 = "  SELECT key_onesignal, REST_API_Key FROM tb_multa WHERE id='1'   ";
        $dados2 = app('db')->select($sql2);

        if ($dados != null &&
            $dados[0]->id_onsignal != null
            && $dados[0]->id_onsignal != '' &&
            $dados2[0] && $dados2[0]->key_onesignal && $dados2[0]->key_onesignal != '') {

            $token_id = $dados[0]->id_onsignal;

            $key_onesignal = $dados2[0]->key_onesignal;
            $REST_API_Key = $dados2[0]->REST_API_Key;

            $content = array(
                "en" => $msg,
            );

            $fields = array(
                'app_id' => $key_onesignal, //"7dfa825c-fab9-4e24-bcf8-429d3dea083f"

                // específico
                'include_player_ids' => array($token_id),

                'data' => $json,
                // 'big_picture' => "http://www.admobra.com.br/img/logo.png",
                //'buttons' => array(array("id" => "id1", "text" => "Abrir")),
                'contents' => $content,
            );

            $fields = json_encode($fields);
            //print("\nJSON sent:\n");
            //print($fields);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
                'Authorization: Basic ' . $REST_API_Key));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HEADER, false);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            $response = curl_exec($ch);
            curl_close($ch);
            return $response;
        }
    }
}
 