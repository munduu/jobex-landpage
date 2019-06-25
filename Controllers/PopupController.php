<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class PopupController extends BaseController
{
    public function getPopup()
    {
        $dados_list = \DB::table('tb_pop_up')
            ->select('id', 'titulo', 'descricao', 'img', 'link')
			->where('init', '<=', 'NOW()')
			->where('end', '<', 'NOW()')
            ->orderBy('id', 'desc')
            ->get();

        return showSucess(
            [
                'popup' => $dados_list,
            ]
        );
    }
}
