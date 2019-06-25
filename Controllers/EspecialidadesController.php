<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class EspecialidadesController extends BaseController
{
    public function getList($request)
    {
        $id_grupo = $request->get('id_grupo');

        if ($id_grupo == null) {
            return showError("ID grupo não encontrado!");
        }

        $dados_list = \DB::table('tb_especialidades')
            ->select('*')
            ->where('id_grupo', '=', $id_grupo)
            ->orderBy('id', 'desc')
            ->get();

        return showSucess(
            [
                'list' => $dados_list,
            ]
        );
    }
}
