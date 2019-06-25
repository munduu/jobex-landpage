<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class DadosBancariosController extends BaseController
{

    public function getList($user, $request)
    {

        $id_user = $user->id_user;

        $dados = \DB::table('tb_bank_data')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->get();

        return showSucess($dados);
    }

    public function newItem($user, $request)
    {

        $id_user = $user->id_user;
        $cpf = $request->get('cpf');
        $agencia = $request->get('agencia');
        $n_conta = $request->get('n_conta');
        $nome_banco = $request->get('nome_banco');
        $nome_titular = $request->get('nome_titular');
        $type_bank = $request->get('type_bank');

        if (!isset($cpf)) {
            return showError("Parametro 'cpf' obrigatório!");
        }

        if (!isset($agencia)) {
            return showError("Parametro 'agencia' obrigatório!");
        }

        if (!isset($n_conta)) {
            return showError("Parametro 'n_conta' obrigatório!");
        }

        if (!isset($nome_banco)) {
            return showError("Parametro 'nome_banco' obrigatório!");
        }

        if (!isset($nome_titular)) {
            return showError("Parametro 'nome_titular' obrigatório!");
        }

        if (!isset($type_bank)) {
            return showError("Parametro 'type_bank' obrigatório!");
        }

        $sql = " UPDATE tb_bank_data set checked='0' WHERE id_user= '$id_user' ";
        app('db')->update($sql);

        $sql = " INSERT INTO `tb_bank_data`( `id_user`, `cpf`, `agencia`, `n_conta`, `nome_banco`, nome_titular, type_bank, checked )
                        values ('$id_user', '$cpf', '$agencia', '$n_conta', '$nome_banco', '$nome_titular', '$type_bank', '1') ";

        app('db')->insert($sql);

        return showSucess(
            [
                true,
            ]
        );
    }

    public function checkedItem($user, $request)
    {
        $id_user = $user->id_user;

        $dados = \DB::table('tb_bank_data')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('checked', '=', '1')
            ->get();

        if (sizeof($dados) > 0) {
            return showSucess($dados);

        } else {
            return showError("Lançamento não encontrado!");
        }

    }


    public function checkItem($user, $request)
    {
        $id_user = $user->id_user;
        $id = $request->get('id');

        if (!isset($id)) {
            return showError("Parametro 'id' obrigatório!");
        }

        $dados = \DB::table('tb_bank_data')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

        if (sizeof($dados) > 0) {
            $sql = " UPDATE tb_bank_data set checked='0' WHERE id_user= '$id_user' ";
            app('db')->update($sql);

            $sql = " UPDATE tb_bank_data set checked='1' WHERE id= '$id' and id_user= '$id_user' ";
            app('db')->update($sql);

            return showSucess('sucess');

        } else {
            return showError("Lançamento não encontrado!");
        }

    }

    public function removeItem($user, $request)
    {
        $id_user = $user->id_user;
        $id = $request->get('id');

        if (!isset($id)) {
            return showError("Parametro 'id' obrigatório!");
        }

        $dados = \DB::table('tb_bank_data')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

        if (sizeof($dados) > 0) {
            $sql = " DELETE FROM tb_bank_data WHERE id= '$id' ";
            app('db')->delete($sql);
            return showSucess('sucess');

        } else {
            return showError("Lançamento não encontrado!");
        }

    }

}
