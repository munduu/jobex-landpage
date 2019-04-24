<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'login'; ?>
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
  <link rel="stylesheet" href="../css/login.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

    <!-- CONTENT -->
    <div class="container">
      
      <!-- REGISTER FORM -->
      <div class="formLogin text-center m-auto">
        <p class="BlueBigText text-center">Faça seu login</p>
        <input id="inputEmail" type="text" class="form-control formInput mt-2" placeholder="Email">
        <input id="inputPassword" type="text" class="form-control formInput mt-2" placeholder="Senha">

        <!-- REGISTER BUTTON -->
        <div class="w-100 text-center mt-3">
          <button id="enterLogin" type="submit" class="btn btn-primary btnJoin">Entrar</button>
        </div>

        <div class="text-left mt-2"><a href="#">Esqueci minha senha</a></div>

        <div class="textLoginSocial text-center mb-1">- Ou faça login usando -</div>
        <button type="button" class="btn btn-light btn-sm mr-2 downloadAppButton">
          <i class="fab fa-facebook-f mr-2"></i>Facebook
        </button>
        <button type="button" class="btn btn-light btn-sm downloadAppButton">
          <i class="fab fa-google-plus-g mr-2"></i>Google+
        </button>
        <!-- REGISTER LINK -->
        <div class="registerLink"><a href="../../cadastrar/">Cadastre-se grátis</a></div>
      </div>
      
    </div>
    <!-- END CONTENT -->

    <!-- FOOTER -->
    <?php include('../controller/footer.php'); ?>
  
    <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../js/login.js"></script>
  </body>
  
</html>