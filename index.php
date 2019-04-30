<?php include('src/controller/config.php'); ?>
<?php $pageName = 'index'; ?>
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

  <link rel="icon" href="img/logo_icon.png" />

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
    type="text/css">

  <!-- Custom styles for this template -->
  <link href="src/css/landing-page.min.css" rel="stylesheet">
  <!-- INDEX CSS -->
  <link href="src/css/index.css" rel="stylesheet">
  <!-- AUTOCOMPLETE CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
</head>

<body>
  
  <?php include('src/controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <header class="text-white text-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto logo">
          <img class="img-fluid" src="img/logo_nome_prinicipal.png" />
        </div>
        <!-- SEARCH -->
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto mySearch">
          <div class="form-row text-center">
            <div class="input-group mb-3">
              <input id="tags" type="text" class="form-control text-center buscar searchBox" autocomplete="off" value=""
                placeholder="buscar profissional" aria-label="buscar profissional" aria-describedby="basic-addon2">
              <input id="tagid"type="hidden">
              <div class="input-group-append">
                <button class="btn btn-outline-secondary buscar searchButton" type="button">
                  <img width="20" height="20" class="buscar" src="img/icone_branco_fundo_transparente.png" />
                </button>
              </div>
            </div>
          </div>
          <div class="row myRowBar">
            <div class="text-left col-auto mr-auto">
              <a href="#"><i class="fas fa-compass"></i> ver locais próximos</a>
            </div>
            <div class="text-right col-auto"><a href="./quero-anunciar">Quero Anunciar</a></div>
          </div>
        </div>
        
      </div>
    </div>
  </header>
  <!-- END CONTENT -->

  <?php include('src/controller/footer.php'); ?>  
  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="src/js/index.js"></script>
</body>

</html>