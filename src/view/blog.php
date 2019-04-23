<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'blog'; ?>
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
  <link rel="stylesheet" href="../css/blog.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container blogContainer">
    <!-- FIRST POST -->
    <div class="blog-post mt-3">
      <img src="../../img/blog.jpg" class="img-fluid">
      <div class="row">
        <div class="col-1">
          <strong class="postDay">14</strong><br>
          <span class="postMonth">jan</span>
        </div>
        <div class="col-11">
          <h2 class="postTitle">Afinal, como fazer a reforma de casa sem estresse?</h2>
        </div>
      </div>

      <p class="postPreview">O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão.
        O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500... <a href="#">Leia
          a matéria completa!</a></p>
      <hr>
      <!-- POST FOOTER-->
      <div class="row container-fluid">
        <div class="col-12 col-sm-12 col-md-5 my-auto">
          <span class="postTime">08:06</span>
          <span class="postCategory">Reforma, Bem-Estar</span>
        </div>
        <div class="col-12 col-sm-12 col-md-7 my-auto postSocial text-right">
          <span class="postLikes">21</span> Curtidas/<span class="postShare"><a href="#">Compartilhar</a></span>/<span
            class="postComentaries">0</span> comentários
        </div>
      </div>
      <!-- END POST FOOTER -->
    </div>
    <!-- END FIRST POST -->
    <!-- SECOND POST -->
    <div class="blog-post mt-4">
      <img src="../../img/blog.jpg" class="img-fluid">
      <div class="row flex-nowrap">
        <div class="col-1 col-xs-2">
          <strong class="postDay">17</strong><br>
          <span class="postMonth">fev</span>
        </div>
        <div class="col-11 col-xs-10">
          <h2 class="postTitle">Afinal, como fazer a reforma de casa sem estresse?</h2>
        </div>
      </div>

      <p class="postPreview">O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão.
        O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500... <a href="#">Leia
          a matéria completa!</a></p>
      <hr>
    </div>
    <!-- POST FOOTER-->
    <div class="row container-fluid">
      <div class="col-12 col-sm-12 col-md-5 my-auto">
        <span class="postTime">08:06</span>
        <span class="postCategory">Reforma, Bem-Estar</span>
      </div>
      <div class="col-12 col-sm-12 col-md-7 my-auto postSocial text-right">
        <span class="postLikes">21</span> Curtidas/<span class="postShare"><a href="#">Compartilhar</a></span>/<span
          class="postComentaries">0</span> comentários
      </div>
    </div>
    <!-- END POST FOOTER -->
    <!-- END SECOND POST -->
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