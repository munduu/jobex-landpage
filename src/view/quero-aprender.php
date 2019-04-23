<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'quero-anunciar'; ?>
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
  <link rel="stylesheet" href="../css/quero-aprender.css">
</head>

<body>

  <!-- CONTENT -->
  <div class="content">
    <!-- HEADER -->
    <div class="myHeader row w-100">
      <div class="col-12 col-sm-12 col-md-4 headerLogo">
        <a href="../../"><img src="../../img/logo-quero-aprender.jpg"></a>
      </div>
      <div class="col-12 col-sm-12 col-md-8 row myMenuHeader">
        <div class="col-12 col-sm-12 col-md-3">
          <a href="#">Home</a>
        </div>
        <div class="col-12 col-sm-12 col-md-3">
          <a href="#">Cursos</a>
        </div>
        <div class="col-12 col-sm-12 col-md-3">
          <a href="#">Professores</a>
        </div>
        <div class="col-12 col-sm-12 col-md-3">
          <a href="#">Planos e Preços</a>
        </div>
      </div>
    </div>
    <div id="myCarousel" style="width:100%" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="backgroundImage" src="../../img/fundo_jobex_quero_aprender.png">
          <div class="backgroundTextBlock">
            <h1 style="font-style: italic;">Sua oportunidade chegou!</h1>
            <p>Já estamos na Era dos Profissionais Independentes</p>
          </div>
        </div>
        <!-- NEXT CONTENT -->
        <div class="infoContainer">
          <!-- SUA OPORTUNIDADE CHEGOU -->
          <div class="blueSubtitle">Sua oportunidade chegou</div>
          <div class="row">
            <div class="col-12 col-sm-6">
              <p>
                Mussum Ipsum, cacilds vidis litro abertis. Quem manda na minha terra sou euzis! Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Mé faiz elementum girarzis, nisi eros vermeio. A ordem dos tratores não altera o pão duris.<br>
                Mussum Ipsum, cacilds vidis litro abertis. Quem manda na minha terra sou euzis! Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Mé faiz elementum girarzis, nisi eros vermeio. A ordem dos tratores não altera o pão duris.
              </p>
            </div>
            <div class="col-12 col-sm-6">
              <p>
                Mussum Ipsum, cacilds vidis litro abertis. Quem manda na minha terra sou euzis! Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Mé faiz elementum girarzis, nisi eros vermeio. A ordem dos tratores não altera o pão duris.<br>
                Mussum Ipsum, cacilds vidis litro abertis. Quem manda na minha terra sou euzis! Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Mé faiz elementum girarzis, nisi eros vermeio. A ordem dos tratores não altera o pão duris.
              </p>
            </div>
            <!-- CONHEÇA NOSSOS CURSOS -->
            <div class="blueSubtitle text-center w-100 mt-3">Conheça nossos Cursos</div>
            <div class="text-center w-100">
              AQUI VAI O CARROUSEL!
            </div>
            <div class="specialText mt-3 w-100">Os melhores mestres <span>farão de você um(a)</span> expert <span>!</span></div>
            <!-- MASTER -->
            <div class="master text-center">
              <div class="masterCircle mt-3"></div>
              <div class="masterTitle">Betina Santos</div>
              <div class="masterLink">Saiba mais -></div>
            </div>
          </div>


        </div>
        <!-- END NEXT CONTENT -->

        <!-- PLANS -->
        <div class="plans w-100 mt-3">
          <div class="plansTitle mt-3">Meus Planos e Cursos</div>
          <!-- PLAN CARD -->
          <div class="planCard">
            <div class="cardTitle">
              Jardinagem
            </div>
            <div class="cardIcon mx-auto"><img src="../../img/job-ico.jpg"></div>
            <div class="cardDesc">
              Aqui a descrição do plano, informações
            </div>
            <div class="miniTextCard">
              curso completo por apenas:
            </div>
            <div class="cardPriceContainer">
              <div class="cardPrice">
                R$ <span>49,00<span><br>
                    <span class="cardPriceBlueText">contratar</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
      </a>
      <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Próximo</span>
      </a>
    </div>


  </div>
  <!-- END CONTENT -->

  <!-- Bootstrap core JavaScript -->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>