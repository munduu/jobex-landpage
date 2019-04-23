<?php

include('../Connections/localhost.php');
include('../functions/functions.php');

$cnpj = anti_sql_injection($_GET['cnpj']);


if(validar_cnpj($cnpj) == false){
    $status   = 400;
    $response = '001';
    $message  = 'CNPJ inválido ou vazio!';
}else{
    $sql  = "SELECT * FROM tb_stores WHERE cnpj = '$cnpj' LIMIT 1";
    $qr   = mysql_query($sql) or die (mysql_error());
    $ln   = mysql_fetch_assoc($qr);

    $status   = 200;
    $response = '002';
    $message  = 'ok';
}

echo '{"status" : "'.$status.'", "responce" : "'.$response.'", "message" : "'.$message.'"}';

?>