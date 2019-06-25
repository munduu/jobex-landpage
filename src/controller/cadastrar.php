<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://soujobex.com.br/user-client-register-land?nome=".str_replace(' ','%20',$_GET['nome'])."&senha=".trim($_GET['senha'])."&email=".trim($_GET['email'])."&type=".trim($_GET['tipo']),
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: soujobex.com.br",
    "User-Agent: PostmanRuntime/7.13.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: "
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}

?>