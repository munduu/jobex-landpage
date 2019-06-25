<?php
include('config.php');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    $e["success"] = false;
    $e["message"] = "Error!" . $conn->connect_error;
}

$data = json_decode(file_get_contents('php://input'), true);

$idPedido   = strip_tags(trim($data["idPedido"]));
$latitude   = strip_tags(trim($data["latitude"]));
$longitude  = strip_tags(trim($data["longitude"])); 			
$bd         = 'tb_gps';
$horaInit   = '00:00:00';
$horaFim    = '23:59:59';

$sql    = "SELECT idEntregador, ( 6371 * acos(cos(radians($latitude)) * cos(radians(latitude)) * cos(radians(longitude) - radians(longitude)) + sin(radians($latitude)) * sin(radians(latitude)))) AS distance FROM $bd ORDER BY distance LIMIT 5";
$result = $conn->query($sql);

$response = array();
$x = 0;

if ($result->num_rows > 0) 	{
    $e["success"] = true;
    $e["message"] = $result->num_rows.' entregador(es)!';

    while($ln = $result->fetch_assoc()) {
        if($ln['idEntregador'] > 0){ 
            $resultS = $conn->query("SELECT id, nome FROM tb_entregador WHERE id='$ln[idEntregador]' LIMIT 1"); 
            $entregadores = $resultS->fetch_assoc();
            $e["entregadores"][$x]["id"] = $entregadores['id'];
            $e["entregadores"][$x]["nome"] = $entregadores['nome'];
            $e["entregadores"][$x]["distancia"] = number_format($ln['distance'],2,'.','');
            $x++;
        }
    }
} else {
    $e["success"] = false;
    $e["message"] = 'Nenhum pedido aceito!';
}
array_push($response, $e);
echo json_encode($response);
?>