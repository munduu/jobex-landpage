<?php

require_once("phpmail/class.phpmailer.php");

$link_sis  = "http://jobex.com.br/landingpage/";
			
//e-mail  			
$msg = "
    <html xmlns=\"http://www.w3.org/1999/xhtml\">
    <head>
    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" /></head>
    <body>
        Ola,<br><br>
            Foi feito um pedido de redefinicao de senha.<br>
            Caso nao tenha pedido, desconsidere a mensagem e entre em contato com a Administracao.<br><br>
            Acesse o seguinte link e troque sua senha: <a href='$link_sis/esqueci?eml=$email&tmp=$tmp'>$link_sis/esqueci?eml=$email&tmp=$tmp</a>
        <br><br>
            Dicas de Seguranca:<br>
            - Crie senhas dificeis de serem descobertas e as mude periodicamente;<br>
            - Nao Crie Senhas baseadas em sequencias;<br>
            - Nao use datas especiais, numero da placa do carro, nomes e afins<br>
            - Misture letras, simbolos especiais e numeros<br>
    <br><br>--<br><br>	
    </body>
    </html>";

    $msg_body        = $texto;
    $msg_assunto     = "Esquecia senha - Jobex";
    
    $mail            = new PHPMailer();
    $mail->IsSMTP(); // Define que a mensagem será SMTP
    $mail->Host      = "smtp.jobex.com.br"; // Endereço do servidor SMTP
    $mail->SMTPAuth  = true; // Autenticação
    $mail->Username  = 'esqueci@jobex.com.br'; // Usuário do servidor SMTP
    $mail->Password  = 'jobex9s3rv3r'; // Senha da caixa postal utilizada
    $mail->From      = "esqueci@jobex.com.br"; 
    $mail->FromName  = "Jobex";
    $mail->AddAddress('Otavio', 'otaviollneto@gmail.com');
    $mail->SMTPDebug = 1;
    $mail->IsHTML(true); // Define que o e-mail será enviado como HTML
    $mail->CharSet   = 'utf-8'; // Charset da mensagem (opcional)
    $mail->Subject   = "Esqueci minha Senha - Jobex"; // Assunto da mensagem
    $mail->Body      = $msg;            
    $enviado         = $mail->Send();
    $mail->ClearAllRecipients();
    $mail->ClearAttachments();
    
    if ($enviado) {
        echo "<script>alert('E-mail enviado com sucesso!');</script>";
    } else {
        echo "<script>alert('Não foi possível enviar o e-mail. Informações do erro:  ".$mail->ErrorInfo."');</script>";
    }

?>
