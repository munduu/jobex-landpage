<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'sou-profissional'; ?>
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
  <link rel="stylesheet" href="../css/sou-profissional.css">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>

  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">

    <div style="text-align:left;" class="wpb_wrapper">
        <p>&nbsp;</p>
        <p>A <strong>Jobex</strong> promove conexões entre clientes e Profissionais Independentes, de forma dinâmica e intuitiva. Através do aplicativo, o cliente encontra o Profissional de sua preferência, enquanto que o Profissional preenche sua agenda sob demanda. Nascemos da vontade de valorizar e otimizar o tempo – a vida é feita de cooperação. Em nossa busca diária por lazer e qualidade de vida, é indispensável utilizarmos a tecnologia a favor do nosso tempo, para realizarmos o que de fato valorizamos.</p>
        <p><strong>#SeuTempoValeOuro!</strong></p>
    </div>


    <div id="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
            <h5 class="mb-0">
                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <h3><i class="fa fa-plus" aria-hidden="true"></i> MISSÃO</h3>
                </button>
            </h5>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
            Promover conexões dinâmicas entre clientes e Profissionais Independentes, agregando tecnologia de ponta em todo o processo, a fim de proporcionar experiências satisfatórias e duradouras às partes envolvidas.
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingTwo">
            <h5 class="mb-0">
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                <h3><i class="fa fa-plus" aria-hidden="true"></i> VISÃO</h3>
                </button>
            </h5>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
            <div class="card-body">
            Consolidar e transformar a prestação de serviços em domicílio num hábito agradável, sempre evoluindo com as melhores soluções para a relação entre clientes e Profissionais Independentes; provocar e impulsionar o empreendedorismo, reafirmar sua importância para a economia e seu papel na geração de renda e prosperidade do trabalhador.
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingThree">
            <h5 class="mb-0">
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                <h3><i class="fa fa-plus" aria-hidden="true"></i> VALORES</h3>
                </button>
            </h5>
            </div>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
            <div class="card-body">
                <p><strong>Seu tempo vale ouro:</strong></p>
                <p>Poupar tempo para fazermos o que valorizamos;</p>
                <p><strong>Conectar com praticidade:</strong></p>
                <p>Priorizar soluções que maximizem a agilidade e a satisfação dos clientes e profissionais;</p>
                <p><strong>Tecnologia com simplicidade:</strong></p>
                <p>Oferecer tecnologia de ponta com fácil acesso;</p>
                <p><strong>Segurança e privacidade:</strong></p>
                <p>Proteger e respeitar os dados dos clientes e parceiros;</p>
                <p><strong>Entusiasmo:&nbsp;</p>
            </div>
            </div>
        </div>
        </div>

      <p style="text-align:center; margin-top:50px;"><a href="../../app" style="background-color:#00aec5; border-radius:10px; padding:20px; 40px; color:#fff;">Baixar Aplicativo</a></p>

  </div>

  <!-- FOOTER -->
  <?php include('../controller/footer.php'); ?>

  <!-- Bootstrap core JavaScript -->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="../js/minha-conta.js"></script>
</body>

</html>