<?php
$servername = "localhost";
$username   = "mineirex_u";
$password   = "zJn6enc8zj";
$dbname     = "mineirex_v001";

$host    = $servername;
$banco   = $dbname; 
$usuario = $username; 
$senha   = $password; 
mysql_connect($host,$usuario,$senha);
mysql_select_db($banco);

$conn = new mysqli($servername, $username, $password, $dbname);

$sqlP = "SELECT *
    FROM tb_textos
    WHERE publicar = '1' 
    ORDER BY id";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($ln = $result->fetch_assoc()) {

    }
}

