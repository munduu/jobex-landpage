<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class CalendarExceptionController extends BaseController
{

    public function getList($user, $request)
    {

        $id_user = $user->id_user;

        $dados = \DB::table('tb_calendar_exception')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->get();

        return showSucess(array('list'=> $dados));
    }
    
    public function newItem($user, $request)
    { 

        $id_user = $user->id_user; 
        $date_in = $request->get('date_in');

        if(!isset($date_in)) return showError("Parametro 'date_in' obrigatório!"); 
        
        $sql = " UPDATE tb_calendar_exception set checked='0' WHERE id_user= '$id_user' ";
        app('db')->update($sql);
        
        $sql = " INSERT INTO `tb_calendar_exception`( `id_user`, `date_in`,    checked )
                        values ('$id_user', '$date_in',   '1') ";

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
 

        $dados = \DB::table('tb_calendar_exception')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('checked', '=', '1')
            ->get();

            if(sizeof($dados)> 0) {
                return showSucess($dados);
                
            } else return showError("Lançamento não encontrado!"); 
    }

    public function checkItem($user, $request)
    { 
        $id_user = $user->id_user;
        $id = $request->get('id');

        if(!isset($id)) return showError("Parametro 'id' obrigatório!");

        $dados = \DB::table('tb_calendar_exception')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

            if(sizeof($dados)> 0) {
                $sql = " UPDATE tb_calendar_exception set checked='0' WHERE id_user= '$id_user' ";
                app('db')->update($sql);

                $sql = " UPDATE tb_calendar_exception set checked='1' WHERE id= '$id' and id_user= '$id_user' ";
                app('db')->update($sql);

                return showSucess('sucess');
                
            } else return showError("Lançamento não encontrado!"); 
    }

    public function removeItem($user, $request)
    {
        $id_user = $user->id_user;
        $id = $request->get('id');

        if(!isset($id)) return showError("Parametro 'id' obrigatório!");

        $dados = \DB::table('tb_calendar_exception')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

            if(sizeof($dados)> 0) {
                $sql = " DELETE FROM tb_calendar_exception WHERE id= '$id' ";
                app('db')->delete($sql);
                return showSucess('sucess');
                
            } else return showError("Lançamento não encontrado!"); 
    }

}
