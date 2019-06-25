<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class ServicosController extends BaseController
{
    public function getList($request)
    { 
        ####  colunas depreciadas
        /**
         *
         */
        
        $search = $request->get('search');

        $sql_count_prof = "SELECT count(id) as count_prof_all
        FROM `tb_grupos_servicos` AS gps where data_del is null and
        	( SELECT COUNT(id) FROM `tb_users` us where FIND_IN_SET(gps.id, us.id_grupo) > 0 )  > 0";

        $dados_count = app('db')->select($sql_count_prof);

        $dados_list = \DB::table('tb_grupos_servicos as gps')->select('id', 'nome',
            \DB::raw('( SELECT COUNT(id) FROM tb_users us where FIND_IN_SET(gps.id, us.id_grupo) > 0 ) as qtd_profissionais')
        )
        ->whereNull('data_del')
        ->orderBy('nome', 'asc')
        ->paginate(7);

        if($search)
            $dados_list = \DB::table('tb_grupos_servicos as gps')->select('id', 'nome',
                \DB::raw('( SELECT COUNT(id) FROM tb_users us where FIND_IN_SET(gps.id, us.id_grupo) > 0 ) as qtd_profissionais')
            )
            ->where('nome', 'like', "%{$search}%")
            ->whereNull('data_del')
            ->orderBy('nome', 'asc')
            ->paginate(7);
        

        return showSucess(
            [
                'count_profissionais' => $dados_count[0]->count_prof_all,
                'list' => $dados_list,
            ]
        );
    }

    public function getListLand($request)
    { 
        $search = $request->get('search');

        $sql_count_prof = "SELECT count(id) as count_prof_all
        FROM `tb_grupos_servicos` AS gps where data_del is null and
        	( SELECT COUNT(id) FROM `tb_users` us where FIND_IN_SET(gps.id, us.id_grupo) > 0 )  > 0";

        $dados_count = app('db')->select($sql_count_prof);

        $dados_list = \DB::table('tb_grupos_servicos as gps')->select('id', 'nome',
            \DB::raw('( SELECT COUNT(id) FROM tb_users us where FIND_IN_SET(gps.id, us.id_grupo) > 0 ) as qtd_profissionais')
        )
        ->whereNull('data_del')
        ->orderBy('nome', 'asc')
        ->paginate(999999999);

        if($search)
            $dados_list = \DB::table('tb_grupos_servicos as gps')->select('id', 'nome',
                \DB::raw('( SELECT COUNT(id) FROM tb_users us where FIND_IN_SET(gps.id, us.id_grupo) > 0 ) as qtd_profissionais')
            )
            ->where('nome', 'like', "%{$search}%")
            ->whereNull('data_del')
            ->orderBy('nome', 'asc')
            ->paginate(9999999);
        

        return showSucess(
            [
                'count_profissionais' => $dados_count[0]->count_prof_all,
                'list' => $dados_list,
            ]
        );
    }
}
