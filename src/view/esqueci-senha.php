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

  <link rel="icon" href="../../img/logo_icon.png" />

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
  <div class="container col-md-8 col-lg-6 col-xl-5 mx-auto">

    <div id="alertLogin" class="alert alert-danger alert-dismissible fade hide" role="alert">
    </div>

    <div class="form-signin">
      <div class="mt-4 col-md-12"><h2 class="form-signin-heading">Resgatar sua Senha</h2></div>
      <div class="mt-4 col-md-12">
        <label for="inputEmail" class="sr-only">E-mail</label>
        <input type="email" id="inputEmail" class="form-control formInput" placeholder="E-mail" required="" autofocus="">
      </div>
      <div class="mt-4 col-md-12"><div id="enterLogin" class="btn btn-lg btn-primary w-100 formInput">Enviar</div></div>

    </div>
  </div>
  <!-- END CONTENT -->

    <!-- FOOTER -->
    <?php include('../controller/footer.php'); ?>
  
    <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../js/esqueci-senha.js"></script>
    <script src="../js/minha-conta.js"></script>
  </body>
  
</html>