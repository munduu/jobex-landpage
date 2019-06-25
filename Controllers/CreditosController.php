<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class CreditosController extends BaseController
{

    public function getTransitionList($user)
    {

        $id_user = $user->id_user;

        $status = getPositiveValue_($id_user);
        if (!$status[0]->dias) {
            return showError("Você não tem saldo suficiente pra realizar essa transação!");
        }

        $dados = \DB::table('tb_pgseguro_transactions as transc')->select('*',
            \DB::raw('  ( SELECT status FROM tb_pgseguro_notification notf
                                WHERE notf.code =  transc.code order by id desc limit 1) as status ')
        )
            ->whereRaw(\DB::raw("  id_user =  $id_user  "))
            ->limit(30)
            ->orderBy('id', 'desc')
            ->whereNull('data_del')->get();

        foreach ($dados as $key => $value) {

            if ($dados[$key]->param_received) {
                $obj = json_decode($dados[$key]->param_received);

                if (isset($obj->boletos)) {
                    $dados[$key]->boletos = $obj->boletos;
                }

            }
        }

        return showSucess(
            [
                'list' => $dados,
                'status' => $status[0],
            ]
        );
    }
	
	public function getExtrato($user)
    {

        $id_user = $user->id_user;

        $dados = \DB::table('tb_banco')->select('*')
            ->whereRaw(\DB::raw("  id_user =  $id_user  "))
            ->limit(30)
            ->orderBy('id', 'desc')
            ->whereNull('data_del')->get();
			
        return showSucess(
            [
                'list' => $dados
            ]
        );
    }

    public function getPlans()
    {

        $dados = \DB::table('tb_plano')->select('*')
            ->orderBy('preco', 'asc')
            ->whereNull('data_del')->paginate(100);

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }

    public function getPositiveValue($user)
    {

        $id_user = $user->id_user;
        $dados = getPositiveValue_($id_user);
        if (!$dados[0]->dias) {
            return showError("Você não tem saldo suficiente pra realizar essa transação!");
        }

        return showSucess($dados[0]);
    }
	
	public function getPositiveValuei($request)
    {
		$perfilDados = \DB::table('tb_users')->select('id')->where('email', '=', $request->email)->get();
        $id_user = $perfilDados[0]->id;
        $dados = getPositiveValue_($id_user);
        if (!$dados[0]->dias) {
            return showError("Você não tem saldo suficiente pra realizar essa transação!");
        }

        return showSucess($dados[0]);
    }

    public function withdraw($user, $request)
    {
        $id_user = $user->id_user;
        $value = $request->get('value');

        if (!isset($value)) {
            return showError("Parametro 'value' obrigatório!");
        }

        $dados = getPositiveValue_($id_user, $value);
        if ($dados[0]->valorResultante < 0) {
            return showError("Você não tem saldo suficiente pra realizar essa transação!");
        } else {

            $sql = " SELECT id FROM tb_bank_data WHERE id_user='$id_user' and checked='1' ";
            $bankDados = app('db')->select($sql);

            if (sizeof($bankDados) == 0) {
                return showError("Você não possúi dados bancários cadastrados!");
            }

            $id_bank_data = $bankDados[0]->id;

   
               // // Responsável
               $sql = " INSERT INTO `tb_withdraw`( `id_bank_data`, id_user ) values
                                                 ('$id_bank_data', '$id_user') ";
               app('db')->insert($sql);
               
               // Amarração ao lançamento             
               $sql = " SELECT max(id) as max_id FROM tb_withdraw WHERE id_user='$id_user'   ";
               $bancoDados = app('db')->select($sql);
            
                // Débito da conta, para a solicitação de saque 
                $obs_responsavel = "Solicitação de depósito bancário ";
                $sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, id_withdraw) values
                                    ('$obs_responsavel', '$id_user', '" . ($value * -1) . "', '" . ($dados[0]->diasSubtraidos * -1) . "', '".$bancoDados[0]->max_id."'  ) ";
                app('db')->insert($sql);

         

            return showSucess(
                [
                    'status' => true,
                ]
            );
        }
    }

    public function posTransactionChange($user, $request)
    {

        $id_user = $user->id_user;
        $id_user_f = $request->get("id_user_f");
        $value = $request->get("value");

        if (!isset($value)) {
            return showError("Parametro (value) necessário");
        }

        if (!isset($id_user_f)) {
            return showError("Parametro (id_user_f) necessário");
        }

        if (intval($value) <= 0) {
            return showError("Valor da transferência não pode ser igual ou menor que 0");
        }

        //pegando os valores positivos
        # valor - valor total
        # days_remain - dias restantes

        //Necessário fazer o foreach, somar os valores e calcular o total possível de transferência
        $dados = getPositiveValue_($id_user, $value); 

        if (!$dados[0]->dias || $dados[0]->valorResultante < 0) {
            return showError("Você não tem saldo suficiente pra realizar essa transação!");
        } else {

            $perfilDados = \DB::table('tb_users')->select('id')->where('id', '=', $id_user_f)->whereNull('data_del')->get();

            if (isset($perfilDados[0]) && isset($perfilDados[0]->id)) {

                // $id_user_f -> Beneficiado
                // $id_user; -> Responsável
                // $value; -> Valor transferido

                // $dados[0]->valorResultante  > oque irá sobrar em valor
                // $dados[0]->dias   > oque irá sobrar em dias
                // $dados[0]->diasSubtraidos  > dias transferidos
				
				$sqlNew   = " SELECT data_cad from `tb_users` where id = '$id_user_f'";
			    $dadosNew = app('db')->select($sqlNew);
				$iduserf  = strtotime($dadosNew[0]->data_cad);

                // Responsável
                $obs_responsavel = "Transferência de créditos para o usuário " . $iduserf;
                $sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, data_cad) values
                                                ('$obs_responsavel', '$id_user', '" . ($value * -1) . "', '" . ($dados[0]->diasSubtraidos * -1) . "', NOW() ) ";
                app('db')->insert($sql);
				
				$sqlNewc   = " SELECT data_cad from `tb_users` where id = '$id_user'";
			    $dadosNewc = app('db')->select($sqlNewc);
				$iduser   = strtotime($dadosNewc[0]->data_cad);

                // Beneficiado
                $obs_beneficiado = "Transferência de créditos realizado pelo usuário " . $iduser;
                $sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, data_cad) values
                                                ('$obs_beneficiado', '$id_user_f', '$value', '" . $dados[0]->diasSubtraidos . "', NOW() ) ";
                app('db')->insert($sql);

                app('App\Http\Controllers\UsersController')
                    ->sendNotification($id_user_f, "Você recebeu uma transferência, no valor de R$" . $value);

                return showSucess(
                    [
                        'status' => true,
                    ]
                );

            } else {
                return showError("Usuário não encontrado, verifique os dados e tente novamente!");
            }

        }
    }

    public function getUserByAppid($user, $request)
    {

        $id_user = $user->id_user;
        $app_id_f = $request->get("app_id");

        if (!isset($app_id_f)) {
            return showError("Parametro (app_id) necessário");
        }

        $data_cad = date('Y-m-d H:i:s', $app_id_f);

        $perfilDados = \DB::table('tb_users')
            ->select('id', 'nome', 'data_cad', 'img_url')
            ->where('data_cad', '=', $data_cad)->whereNull('data_del')->get();

        return showSucess(
            $perfilDados
        );

    }

    public function dailyPayment()
    {

        $sql = "SELECT id_user, sum(valor) as valor, sum(dias) as dias FROM tb_banco
        where valor > 0 and dias > 0 and id_user not in (SELECT distinct id_user FROM `tb_banco` where DATE(data_cad) = CURDATE() and daily_payment = 1)
        and id_user in (SELECT distinct id FROM `tb_users` where findme = 1)
        GROUP by id_user";

        $dados = app('db')->select($sql);
		
        foreach ($dados as $value) {

            $id_user = $value->id_user;
            $item = getPositiveValue_($id_user);
			
			var_dump($item);
            
            if (!$dados[0]->dias) {
                return showError("Você não tem saldo suficiente pra realizar essa transação!");
            }
            $dias = $item[0]->dias;
            $valor = $item[0]->valor;

            $dailyPayment = $valor / $dias;

            // Débito diário
            $obs_responsavel = "Débito diário de plano ativo ";
            $sql = " INSERT INTO `tb_banco` (obs, id_user, valor, dias, daily_payment) values
                                            ('$obs_responsavel', '$id_user', '" . ($dailyPayment * -1) . "', '" . (-1) . "', 1 ) ";
            app('db')->insert($sql);

        }

        return showSucess(
            $dados
        );
    }
}

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
