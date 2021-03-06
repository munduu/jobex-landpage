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
  <link rel="stylesheet" href="../css/menu-topo.css">
  <link rel="stylesheet" href="../css/quero-aprender.css">
  <!-- SLICK CAROUSEL CSS -->
  <link rel="stylesheet" type="text/css" href="../shared/slick/slick.css" />
  <link rel="stylesheet" type="text/css" href="../shared/slick/slick-theme.css" />
</head>

<body>

  <!-- CONTENT -->
  <div class="content">
    <!-- HEADER -->

    <nav class="navbar navbar-expand-lg navbar-light bg-lignt text-center header myHeader row">
    <a class="navbar-brand text-left text-md-left text-lg-center topLogoContainer">
      <div><img class="headerLogo" src="../../img/logo-white.png" /></div>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse topMenuContainer" id="navbarSupportedContent">
      <ul class="navbar-nav w-100 justify-content-center">
        <li class="nav-item m-auto">
          <a class="nav-link" href="../../">Home<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="../../">Cursos</a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="../../">Professores</a>
        </li>
        <li class="nav-item m-auto">
          <a class="nav-link" href="../../">Planos e Preços</a>
        </li>
      </ul>
    </div>

  </nav>
  
 <!--
    <div class="myHeader row w-100">
      <div class="col-12 col-sm-12 col-md-4 headerLogo">
        <a href="../../"><img src="../../img/logo-white.png"></a>
      </div>
      <div class="col-12 col-sm-12 col-md-8 row myMenuHeader">
        <div class="col-12 col-sm-12 col-md-3">
          <a href="../../">Home</a>
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
    </div> -->



    <div style="width:100%" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="backgroundImage" src="../../img/fundo_jobex_quero_aprender.png">
          <div class="backgroundTextBlock">
            <h1 style="font-style: italic;">Sua oportunidade chegou!</h1>
            <p>Já estamos na Era dos Profissionais Independentes</p>
          </div>
        </div>
        <!-- NEXT CONTENT -->
        <div class="infoContainer mx-auto">
          <!-- SUA OPORTUNIDADE CHEGOU -->
          <div class="blueSubtitle">Sua oportunidade chegou</div>
          <div class="row">
            <div class="col-12">
              <p>
                Responsável por aproximadamente 60% do Produto Interno Bruto, o setor de serviços ganha a cada dia mais relevância no mercado de
                trabalho, principalmente após a crise econômica internacional. Esta conclusão faz parte de um estudo produzido pela Divisão Econômica da
                Confederação Nacional do Comércio de Bens, Serviços e Turismo (CNC).
                Ao contrário dos setores primário (agropecuária) e secundário (indústria), que sofreram com a queda na demanda externa,
                <b>os serviços, sempre intensivos em mão de obra</b>, beneficiaram-se do aquecimento do mercado interno nos últimos anos e impulsionaram
                a geração de emprego.
                Com a nova vigência da <b>CLT</b> (Consolidação das Leis trabalhistas), a demanda por mão de obra especializada só tende a crescer e gerar
                renda e prosperidade num<b>ecossistema de oportunidades</b> e boas relações entre clientes e Profissionais Independentes.

              </p>
              <p class="OportunitySpecialText text-center">
                Cursos rápidos e promissores <span>para você se formar e </span>ganhar dinheiro todo dia!
              </p>
            </div>
            <!-- CONHEÇA NOSSOS CURSOS -->
            <div class="blueSubtitle text-center w-100 mt-3 mb-3">Conheça nossos Cursos</div>
            <!-- CAROUSEL -->
            <div class="courseCarousel w-100 mb-3 text-center">
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/1.jpg">
                  <div class="courseText">
                    <div class="courseName">Limpeza de Caixa D'água</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/2.jpg">
                  <div class="courseText">
                    <div class="courseName">Cuidador de Idosos</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/3.jpg">
                  <div class="courseText">
                    <div class="courseName">Piscineiro</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/4.jpg">
                  <div class="courseText">
                    <div class="courseName">Cuidador de Animais</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/1.jpg">
                  <div class="courseText">
                    <div class="courseName">Limpeza de Caixa D'água</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/2.jpg">
                  <div class="courseText">
                    <div class="courseName">Cuidador de Idosos</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/3.jpg">
                  <div class="courseText">
                    <div class="courseName">Piscineiro</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
              <!-- CAROUSEL CARD -->
              <div class="carouselCard">
                <div class="cardContainer text-center">
                  <img src="../../img/4.jpg">
                  <div class="courseText">
                    <div class="courseName">Cuidador de Animais</div>
                    <div class="courseLink"><a href="#">Saiba mais -></a></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="specialText mt-3 w-100 text-center text-sm-left mb-3">Os melhores mestres <span>farão de você um(a)</span> expert <span>!</span></div>
            <!-- MASTER -->
            <div class="mb-3 row w-100">
              <div class="text-center master col-sm-4 col-12">
                <div class="masterCircle mt-3 betina"></div>
                <div class="masterTitle ">Betina Santos</div>
                <div class="masterLink"><a href="#">Saiba mais -></a></div>
              </div>
              <div class="text-center master col-sm-4 col-12">
                <div class="masterCircle mt-3 rafael"></div>
                <div class="masterTitle">Rafael Onório</div>
                <div class="masterLink"><a href="#">Saiba mais -></a></div>
              </div>
              <div class="text-center master col-sm-4 col-12">
                <div class="masterCircle mt-3 otavio"></div>
                <div class="masterTitle">Otávio Lamartine</div>
                <div class="masterLink"><a href="#">Saiba mais -></a></div>
              </div>
            </div>
          </div>
        </div>
        <!-- END NEXT CONTENT -->

        <!-- PLANS -->
        <div class="plans container-fluid text-center text-md-left">
          <div class="plansTitle">Meus Planos e Cursos</div>

          <div class="planContainer row">
            <!-- PLAN CARD -->
            <div class="planCard m-auto">
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
                  R$ <span>49,00</span><br>
                </div>
                <a href="#" class="cardPriceBlueText">contratar</a>
              </div>
            </div>
            <!-- PLAN CARD -->
            <div class="planCard m-auto">
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
                  R$ <span>49,00</span><br>
                  <a href="#" class="cardPriceBlueText">contratar</a>
                </div>
              </div>
            </div>
            <!-- PLAN CARD -->
            <div class="planCard m-auto">
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
                  R$ <span>49,00</span><br>
                  <a href="#" class="cardPriceBlueText">contratar</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- FOOTER -->
      <div class="myFooter text-center">
        <div class="row">
          <div class="col-3 col-sm-3"></div>
          <div class="col-12 col-sm-12 col-md-6 center-block">
            <div class="w-100 footerSubscribeText">Cadastre seu e-mail e receba novidades</div>
            <!-- SUBSCRIBE  -->
            <div class="input-group mb-3 subscribeGroup m-auto">
              <input type="email" class="form-control inputEmail" id="email" placeholder="nome@exemplo.com.br">
              <div class="input-group-append">
                <button type="button" class="btn btn-primary btn-lg subscribeButton">
                  <i class="fas fa-check"></i>
                </button>
              </div>
            </div>


          </div>
          <div class="col-12 col-sm-12 col-md-3 text-center mt-md-0 mt-3 text-md-left">
            <a href="http://bit.ly/jobex-applestore">
              <button type="button" class="btn btn-light btn-sm downloadAppButton mb-2">
                <i class="fab fa-apple mr-1"></i>App Store
              </button>
            </a>
            <br>
            <a href="http://bit.ly/jobex-googleplay">
              <button type="button" class="btn btn-light btn-sm downloadAppButton">
                <i class="fab fa-google-play   mr-1"></i>Google Play
              </button>
            </a>
          </div>
        </div>
        <!-- SOCIAL BAR -->
        <div class="col-12 text-center socialBar">
          <a href="https://www.facebook.com/jobexbrasil/"><i class="fab fa-facebook-f mr-2"></i></a>
          <a href="https://www.instagram.com/jobexbrasil/"><i class="fab fa-instagram mr-2"></i></a>
          <a href="https://www.youtube.com/results?search_query=JobexBrasil"><i class="fab fa-youtube"></i></a>
          <div class="mt-3 mb-3 mb-lg-0">
            &copy; 2019 - Jobex -
            <a href="<?php if ($pageName == 'index') {
                        echo './contato';
                      } else {
                        echo '../../contato';
                      } ?>"> Contato </a> |
            <a href="<?php if ($pageName == 'index') {
                        echo './politica-de-privacidade';
                      } else {
                        echo '../../politica-de-privacidade';
                      } ?>  "> Política de Privacidade </a> |
            <a href="<?php if ($pageName == 'index') {
                        echo './termos-de-uso';
                      } else {
                        echo '../../termos-de-uso';
                      } ?>"> Termos e Condições </a>
          </div>
        </div>
      </div>
      <!-- END FOOTER -->
    </div>
    <!-- END CONTENT -->

    <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="../shared/slick/slick.js"></script>
    <script type="text/javascript" src="../js/quero-aprender.js"></script>
</body>

</html>