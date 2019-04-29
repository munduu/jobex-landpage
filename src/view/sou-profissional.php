<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'sou-profissional'; ?>
<!DOCTYPE html>
<html lang="pt-BR">

<!-- HEADER-->

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="<?php echo $pageDescription; ?>">
  <meta name="author" content="<?php echo $pageAuthor; ?>">
  <meta name="keywords" content="<?php echo $pageKeywords; ?>">
  <title><?php echo $pageTitle; ?></title>

  <!-- Bootstrap core CSS -->
  <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="../css/landing-page.min.css" rel="stylesheet">
  <!-- AUTOCOMPLETE CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
  <!-- PAGE CSS -->
  <link rel="stylesheet" href="../css/sou-profissional.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>

  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">

    <!-- CAROUSEL -->
    <div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
      <!--Indicators-->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-2" data-slide-to="1" class=""></li>
      </ol>
      <!--/.Indicators-->
      <!--Slides-->
      <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
          <div class="view">
            <img class="d-block w-100 img-fluid" src="../../img/profissionais_01-1.jpg" alt="First slide">
            <div class="mask rgba-black-light"></div>
          </div>
        </div>
        <div class="carousel-item">
          <!--Mask color-->
          <div class="view">
            <img class="d-block w-100 img-fluid" src="../../img/profissionais_02-1.jpg" alt="Second slide">
            <div class="mask rgba-black-light"></div>
          </div>
        </div>
      </div>
      <!--/.Slides-->
    </div>
    <!-- END CAROUSEL -->
    <p class="title">
      Vá aonde seu cliente está!
    </p>
    <p>
      Torne-se um <strong>Profissional Independente Jobex</strong> e comece a <strong>multiplicar clientes</strong>. <br>
      <strong>#SeuTempoValeOuro!</strong>
    </p>
    <h4>É fácil se tornar um Profissional Independente Jobex.</h4>
    <!-- LIST -->
    <ul>
      <hr>
      <li><i class="fas fa-mobile"></i><a href="../../app/">Baixe o App Jobex (disponível para Android e IOS)</a></li>
      <hr>
      <li><i class="fas fa-pen-square"></i><a href="../../cadastrar/">Cadastre-se grátis</a></li>
      <hr>
      <li><i class="fas fa-calendar-alt"></i>Bem poucos cliques você encontra um Profissional Independente. É você quem decide quando, onde e por quem deseja ser atendido(a).</li>
      <hr>
      <li><i class="fas fa-clock"></i>Comece hoje a poupar tempo!</li>
      <hr>
    </ul>
    <!-- BUTTONS -->
    <a href="../../cadastrar/"><button type="submit" class="btn-lg btn btn-primary btDownload mr-2">Cadastre-se grátis</button></a>
    <a href="../../app/"><button type="submit" class="btn-lg btn btn-primary btDownload">Baixe o App Jobex</button></a>
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