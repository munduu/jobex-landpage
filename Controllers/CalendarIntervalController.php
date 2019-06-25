<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class CalendarIntervalController extends BaseController
{

    public function getList($user, $request)
    {

        $id_user = $user->id_user;

        $dados = \DB::table('tb_calendar_interval')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->get();

        return showSucess(array('list'=> $dados));
    }
    
    public function newItem($user, $request)
    { 

        $id_user = $user->id_user; 
        $day_in = $request->get('day_in');
        $day_out = $request->get('day_out'); 
        
        $hour_in = $request->get('hour_in');
        $hour_out = $request->get('hour_out'); 

        if(!isset($day_in)) return showError("Parametro 'day_in' obrigatório!");
        if(!isset($day_out)) return showError("Parametro 'day_out' obrigatório!"); 
        if(!isset($hour_in)) return showError("Parametro 'hour_in' obrigatório!");
        if(!isset($hour_out)) return showError("Parametro 'hour_out' obrigatório!"); 

        $sql = " UPDATE tb_calendar_interval set checked='0' WHERE id_user= '$id_user' ";
        app('db')->update($sql);

        $sql = " INSERT INTO `tb_calendar_interval`( `id_user`, `day_in`, `day_out`, `hour_in`, `hour_out`, checked )
                        values ('$id_user', '$day_in', '$day_out', '$hour_in', '$hour_out',  '1') ";

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
 

        $dados = \DB::table('tb_calendar_interval')->select('*')
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

        $dados = \DB::table('tb_calendar_interval')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

            if(sizeof($dados)> 0) {
                $sql = " UPDATE tb_calendar_interval set checked='0' WHERE id_user= '$id_user' ";
                app('db')->update($sql);

                $sql = " UPDATE tb_calendar_interval set checked='1' WHERE id= '$id' and id_user= '$id_user' ";
                app('db')->update($sql);

                return showSucess('sucess');
                
            } else return showError("Lançamento não encontrado!"); 
    }

    public function removeItem($user, $request)
    {
        $id_user = $user->id_user;
        $id = $request->get('id');

        if(!isset($id)) return showError("Parametro 'id' obrigatório!");

        $dados = \DB::table('tb_calendar_interval')->select('*')
            ->orderBy('id', 'desc')
            ->where('id_user', '=', $id_user)
            ->where('id', '=', $id)
            ->get();

            if(sizeof($dados)> 0) {
                $sql = " DELETE FROM tb_calendar_interval WHERE id= '$id' ";
                app('db')->delete($sql);
                return showSucess('sucess');
                
            } else return showError("Lançamento não encontrado!"); 
    }

}
