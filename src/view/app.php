<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'app'; ?>
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
  <link rel="stylesheet" href="../css/app.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>

  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">

    <img src="../../img/app.jpg" class="img-fluid col-12 col-sm-12 mx-auto" alt="Responsive image"><br><br>

    <p class="textBlue">Baixe ou atualize o APP da Jobex hoje mesmo!</p>
    <p class="textBlue">Poupe tempo e ganhe dinheiro!</p>
    <p class="textBlack">Clique abaixo na platadorma de sua preferência:</p>
    <div class="row col-sm-12 col-12 appDownloadButton">
      <div class="col-6 col-sm-6 text-right">
        <a href="#">
          <img src="https://upload.wikimedia.org/wikipedia/commons/c/cd/Get_it_on_Google_play.svg">
        </a>
      </div>
      <div class="col-6 col-sm-6">
        <a href="#">
          <img src="https://upload.wikimedia.org/wikipedia/commons/3/3c/Download_on_the_App_Store_Badge.svg">
        </a>
      </div>
    </div>
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