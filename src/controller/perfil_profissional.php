<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://soujobex.com.br/perfil-profissional-land?id_user=$_POST[id_user]",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Content-Type: application/json",
    "cache-control: no-cache",
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
header('Content-Type: application/json');
if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}

?>