<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class CartoesController extends BaseController
{
    public function getList()
    {
        $dados_list = \DB::table('tb_cartoes_credt')
            ->select('id', 'nome')
            ->orderBy('id', 'desc')
            ->get();

        return showSucess(
            [
                'list' => $dados_list,
            ]
        );
    }
}
