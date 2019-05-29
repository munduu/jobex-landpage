<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'cadastrar'; ?>
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
  <link rel="stylesheet" href="../css/cadastrar.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>

  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container text-center">
    <p class="BlueBigText">Cadastre-se grátis</p>
    <!-- REGISTER FORM -->
    <form class="formRegister row justify-content-center align-self-center m-auto">
      <select id="selectType" class="formInput mr-auto ml-auto" style="">
        <option value="">Selecione uma Opção</option>
        <option value="Sou Cliente">Sou Cliente</option>
        <option value="Sou Profissional">Sou Profissional</option>
      </select>
      <input id="inputNome" type="text" value="" class="form-control formInput col-12 col-sm-6 col-md-6 mr-auto ml-auto mt-2" placeholder="Nome">
      <input id="inputEmail" type="text" value="" class="form-control formInput col-12 col-sm-6 col-md-6 mr-auto ml-auto mt-2" placeholder="Email">
      <input id="inputSenha" type="password" value="" class="form-control formInput col-12 col-sm-6 col-md-6 mr-auto ml-auto mt-2" placeholder="Senha">
      <input id="inputRSenha" type="password" value="" class="form-control formInput col-12 col-sm-6 col-md-6 mr-auto ml-auto mt-2 mb-3" placeholder="Repetir senha">
      <!-- CHECKBOX TERMS -->
      <div class="w-100 text-center mt-3 mb-3">
        <input type="checkbox" id="checkTerms">
        <label for="checkTerms">
          Li e concordo com os <a href="../../termos-de-uso"><strong>Termos de Uso</strong></a> da Jobex.
        </label>
      </div>
      <!-- REGISTER BUTTON -->
      <div class="w-100 text-center mt-3">
        <button id="enterRegister" type="button" class="btn btn-primary">Cadastrar</button>
      </div>


    </form>

  </div>

  <!-- END CONTENT -->

  <!-- FOOTER -->
  <?php include('../controller/footer.php'); ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="../js/cadastrar.js"></script>
</body>

</html>