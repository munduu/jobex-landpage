<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'sou-cliente'; ?>
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
  <link rel="stylesheet" href="../css/sou-cliente.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>

  <?php include('../controller/menu_topo.php'); ?>
  <!-- CONTENT -->
  <div class="container">

    <img src="../../img/banner-soucliente.png" class="img-fluid bannerImage" alt="Responsive image"><br><br>

    <p class="title">
      Encontre o Profissional certo e poupe seu tempo!
    </p>
    <p>
      Você trabalha, estuda, cuida dos filhos, da casa, enfrenta trânsito, filas e outros compromissos…
      <strong>A Jobex pensa nisso!</strong> Respeitamos e <strong>valorizamos seu tempo</strong> e agenda.
    </p>
    <p>
      Selecione o Profissional e ele vai até você. Isso pode lhe render um tempo precioso para fazer
      o que de fato lhe interessa. <strong>#SeuTempoValeOuro!</strong>
    </p>
    <h4>É fácil usar o App Jobex</h4>

    <ul>
      <hr>
      <li><i class="fas fa-mobile"></i>Baixe o App Jobex (disponível para Android e IOS)</li>
      <hr>
      <li><i class="fas fa-pen-square"></i>Cadastre-se grátis</li>
      <hr>
      <li><i class="fas fa-calendar-alt"></i>Bem poucos cliques você encontra um Profissional Independente. É você quem decide quando, onde e por quem deseja ser atendido(a).</li>
      <hr>
      <li><i class="fas fa-clock"></i>BComece hoje a poupar tempo!</li>
      <hr>
    </ul>

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