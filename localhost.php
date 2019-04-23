<?php
$hostname_localhost = "localhost";
$database_localhost = "igestao_hitz";
//$username_localhost = "mundoino_teste";
//$password_localhost = "inova9teste";
$username_localhost = "igestao_hitz";
$password_localhost = "QSxMLi1j8";
$localhost = mysql_pconnect($hostname_localhost, $username_localhost, $password_localhost) or trigger_error(mysql_error(),E_USER_ERROR); 

$host    = $hostname_localhost;
$banco   = $database_localhost; 
$usuario = $username_localhost; 
$senha   = $password_localhost; 
mysql_connect($host,$usuario,$senha);
mysql_select_db($banco);

$sql_prog      = "SELECT * FROM tb_prog WHERE id='1'";
$result_prog   = mysql_query($sql_prog) or die("Erro no banco de dados!");
$ln_prog       = mysql_fetch_assoc($result_prog);

$prog_empresa       = $ln_prog["prog_empresa"];
$prog_nome          = $ln_prog["prog_nome"];
$prog_sigla         = $ln_prog["prog_sigla"];
$prog_versao        = $ln_prog["prog_versao"];
$prog_email         = $ln_prog["prog_email"];
$prog_tel           = $ln_prog["prog_tel"];
$prog_link          = $ln_prog["prog_link"];
$prog_creitos1      = $ln_prog["prog_creditos1"];
$prog_creitos2      = $ln_prog["prog_creditos"];

$print_result       = true; //true para imprimir aba, false para não imprimir
$save_backup        = true; //true para salvar, false para não salvar
$backup_file_name   = "blackjack_backup"; //Nome do arquivo, se $save_backup estiver ativado
$backup_file_format = "sql"; // formato da extensão (automatic_backup_140409.sql)
$db_backup          = $database_localhost; // nome do banco de dados para backup
$dir_backup         = "http://192.168.1.10:1020/inova/igestao_blackjack/backup/bkp/"; // endereço completo do diretório onde será salvo o backup
$dir2_backup        = "http://192.168.1.10:1020/inova/igestao_blackjack/backup/bkp/"; // endereço do diretório onde será salvo o backup
$dir3_backup        = "/home/mundoino/public_html/backup/bkp/"; // endereço completo do diretório onde será salvo o backup
$dados_ftp          = array("host" => "ftp.mundoinova.com.br","mundoino" => "backup","senha" => "inova9s3rv3r"); // host: endereço ftp; usuario e senhas do ftp
error_reporting(0);
?>
