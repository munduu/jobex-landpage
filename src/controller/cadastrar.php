<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://v22.soujobex.com.br/user-client-register-land?nome=".str_replace(' ','%20',$_GET['nome'])."&senha=".trim($_GET['senha'])."&email=".trim($_GET['email']),
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: v22.soujobex.com.br",
    "Postman-Token: dc0b3985-8b07-4029-9271-f7deaa05a394,8b5d6044-2b51-49eb-8df8-c96207320f76",
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