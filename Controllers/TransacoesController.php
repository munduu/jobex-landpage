<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class TransacoesController extends BaseController
{
    public function getList($user)
    {

        $id_user = $user->id_user;

        ####  colunas depreciadas
        /**
         * 
         */
  

        $sql = " SELECT
           * , ( SELECT status FROM tb_pgseguro_notification notf WHERE notf.code =  transc.code order by id desc limit 1) as status 

        FROM tb_pgseguro_transactions transc 
            
            WHERE   id_user='$id_user'   order by id DESC
        
         ";

        $dados = app('db')->select($sql);

        return showSucess(
            [
                'list' => $dados,
            ]
        );
    }
}
