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
?>