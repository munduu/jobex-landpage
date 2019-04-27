<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'sou-cliente'; ?>
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
  <link rel="stylesheet" href="../css/sou-cliente.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>
  <!-- CONTENT -->
  <div class="container">

    <!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-2" data-slide-to="1"></li>
  </ol>
  <!--/.Indicators-->
  <!--Slides-->
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <div class="view">
        <img class="d-block w-100 img-fluid" src="../../img/clientes_01-2.jpg" alt="First slide">
        <div class="mask rgba-black-light"></div>
      </div>
    </div>
    <div class="carousel-item">
      <!--Mask color-->
      <div class="view">
        <img class="d-block w-100 img-fluid" src="../../img/clientes_02-2.jpg" alt="Second slide">
        <div class="mask rgba-black-light"></div>
      </div>
    </div>
  </div>
  <!--/.Slides-->
</div>
<!--/.Carousel Wrapper-->
    
    <br><br>

      <div style="text-align:center;" class="wpb_wrapper">
        <h3 style="color:#009DBE;">Encontre o Profissional certo e poupe seu tempo!</h3>
        <p>&nbsp;</p>
        <p>Você trabalha, estuda, cuida dos filhos, da casa, enfrenta trânsito, filas e outros compromissos…</p>
        <p><strong>A Jobex pensa nisso!</strong>&nbsp;Respeitamos e <strong>valorizamos seu tempo</strong> e agenda.</p>
        <p>&nbsp;</p>
        <p>Selecione o Profissional e ele vai até você. Isso pode lhe render um tempo precioso para fazer</p>
        <p>o que de fato lhe interessa. <strong>#SeuTempoValeOuro!</strong></p>
      </div>

      <div style="text-align:center;" class="wpb_wrapper">
			  <h4>É fácil usar o App Jobex</h4>
      </div>

      <div style="text-align:center;" class="q_icon_list"><i class="fa fa-mobile" style="font-size: 21px;color: #ffffff;background-color: #00aec5;"></i>Baixe o App Jobex (disponível para Android e IOS)</div>
      <div style="text-align:center;" class="q_icon_list"><i class="fa fa-pencil-square-o" style="font-size: 15px;color: #ffffff;background-color: #00aec5;"></i>Cadastre-se grátis</div>
      <div style="text-align:center;" class="q_icon_list"><i class="fa fa-calendar" style="font-size: 15px;color: #ffffff;background-color: #00aec5;"></i>Em poucos cliques você encontra um Profissional Independente. É você quem decide quando, onde e por quem deseja ser atendido(a).</div>
      <div style="text-align:center;" class="q_icon_list"><i class="fa fa-clock-o" style="font-size: 21px;color: #ffffff;background-color: #00aec5;"></i>Comece hoje a poupar tempo!</div>

      <p style="text-align:center; margin-top:50px;"><a href="../../app" style="background-color:#00aec5; border-radius:10px; padding:20px; 40px; color:#fff;">Baixar Aplicativo</a></p>

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