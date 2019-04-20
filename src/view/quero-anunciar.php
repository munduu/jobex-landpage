<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'quero-anunciar'; ?>
<!DOCTYPE html>
<html lang="pt-BR">

<!-- HEADER-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="<?php echo $pageDescription;?>">
  <meta name="author" content="<?php echo $pageAuthor;?>">
  <meta name="keywords"content="<?php echo $pageKeywords;?>">
  <title><?php echo $pageTitle;?></title>

  <!-- Bootstrap core CSS -->
  <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
    type="text/css">

  <!-- Custom styles for this template -->
  <link href="../css/landing-page.min.css" rel="stylesheet">
  <!-- AUTOCOMPLETE CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
  <!-- PAGE CSS -->
  <link rel="stylesheet" href="../css/quero-anunciar.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">

    <img src="../../img/banner-soucliente.png" class="img-fluid" alt="Responsive image"><br><br>

    <p style="text-align:center; color:#009DBE; font-size:24px;"><strong>Anunciar serviços</strong> na Jobex é fácil, como <strong>1,2,3...</strong></p>

    <p style="text-align:center;"><span style="font-size:18px;">1.</span> Acesse sua conta >> <a href="../../cadastrar" style="color:#009DBE;">Cadastre-se grátis</a>;</p>

    <p style="text-align:center;"><span style="font-size:18px;">2.</span> Clique em <span style="color:#009DBE;">"Inserir Crédito"</span> e selecione seu Plano;</p>

    <p style="text-align:center;"><span style="font-size:18px;">3.</span> Preencha os campos e efetue o pagamento. (cartão de crédito ou boleto)</p>

    <p style="text-align:center; color:#009DBE; font-size:24px;"><strong>Viu como é fácil?</strong></p>

    <p style="text-align:center; font-size:12px;"><strong>Muito destaque</strong>, pra Você/sua Empresa no <strong>APP e site Jobex</strong></p>
  
    <p style="text-align:center; margin-top:50px;"><a href="../../planos" style="background-color:#9400d3; border-radius:10px; padding:20px; 40px; color:#fff;">Comprar créditos</a></p>
</div>

  <!-- END CONTENT -->

  <!-- FOOTER -->
  <?php include('../controller/footer.php'); ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>