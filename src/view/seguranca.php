<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'seguranca'; ?>
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

    <div style="text-align:center" class="wpb_wrapper">
			<p>A Jobex trabalha com dedicação e transparência para lhe oferecer a melhor experiência possível na contratação de um Profissional.</p>
      <p>&nbsp;</p>
      <h3 style="color: #009DBE;">Vale lembrar que:</h3>
      <p>&nbsp;</p>
      <ol>
      <li>Você pode “<strong>registrar chegada</strong>” do profissional, fazendo uma foto do mesmo e publicando em suas redes sociais (opcional);</li>
      <li><strong>Nunca faça pagamentos antecipados</strong>. Durante a visita do Profissional, peça um orçamento por escrito (se for o caso) e, se necessário, exija o <strong>Contrato de Prestação de Serviços</strong>, onde conste todos os detalhes do orçamento.</li>
      <li><strong>Não enviamos e-mail pedindo seus dados</strong>. O único tipo de e-mail que enviamos é sobre promoções temporárias e de nossos parceiros. Nesse caso, você deve observar que NÃO LHE PEDIMOS DADO ALGUM, apenas, se você interessar, deve acessar o site da Jobex para conhecer melhor tais ofertas. <span style="color: #0000ff;"><strong>Nossos sites oficiais na internet são:</strong></span> www.<strong>jobex.org</strong> e <strong>jobex.com.br</strong>.</li>
      </ol>
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