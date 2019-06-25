<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class ReportsController extends BaseController
{
    public function getList($user)
    {

        $id_user = $user->id_user;

        ####  colunas depreciadas
        /**
         * 
         */

        $id_user = $user->id_user; 
        $subqueryMaxid = ' FROM tb_report_msg where id = (SELECT MAX(id) from tb_report_msg where id_proposta = rcl.id_proposta and data_del is null  )';
        
        $dados = \DB::table('tb_report_msg as rcl')->select( 'id_proposta',
        
            \DB::raw(' (SELECT obs  '. $subqueryMaxid .') as obs '),
            \DB::raw(' (SELECT visto  '. $subqueryMaxid .') as visto '),
            \DB::raw(' (SELECT data_cad  '. $subqueryMaxid .') as data_cad '),
            \DB::raw(' (SELECT nome FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as nome_user '),
            \DB::raw(' (SELECT id FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as id_user '),
            \DB::raw(' (SELECT img_url FROM tb_users where id = (SELECT id_user  '. $subqueryMaxid .')) as foto_user ')
        )
        ->whereRaw(\DB::raw("  id_user='$id_user' "))
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
        
        ####  colunas depreciadas
        /**
         * 
         */


        $dados = \DB::table('tb_report_msg as rcl')->select(
            
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
        
 
            $sql = " INSERT INTO `tb_report_msg` (obs, id_user, id_proposta, data_cad )
            VALUES ('$obs','$id_user','$id_proposta',  NOW()) ";
     

            app('db')->insert($sql);

     
        return showSucess(
            [
                'newMessage' => true,
            ]
        );
    }
}
