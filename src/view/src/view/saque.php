<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'perfil'; ?>
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
  <link rel="stylesheet" href="../css/app.css">
  <!-- INDEX CSS -->
  <link href="../css/index.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/menu-topo.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">
    
      <div class="container marketing">
        <h2>Realizar Saque</h2>
        <!-- Three columns of text below the carousel -->
        <div style="text-align:center;" class="card-footer text-muted">
            <a class="btn btn-primary" style="margin:15px;" href="../../extrato" role="button" aria-pressed="true"><i class="fa fa-plus-circle"></i> Extrato Geral</a>
            <a class="btn btn-primary" style="margin:15px;" href="../../saque" role="button" aria-pressed="true"><i class="fa fa-arrow-alt-circle-down"></i> Saque</a>
            <a class="btn btn-primary" style="margin:15px;" href="../../transferir" role="button" aria-pressed="true"><i class="fa fa-exchange-alt"></i> Transferir Créditos</a>
            <a class="btn btn-success" style="margin:15px;" href="../../planos" role="button" aria-pressed="true"><i class="fa fa-credit-card"></i> Comprar</a>
        </div>

        <div style="text-align:center;"  class="card">
        <div class="card-header">Saldo</div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">J$ <span class="saldo"></span> = R$ <span class="saldo"></span><br> Dias: <span class="dias"></span></li>
            </ul>
        </div>

        <div style="text-align:center;"  class="card">
            <div class="form-signin">
                <div class="mt-4 col-md-12">
                    <label for="inputValor" class="sr-only">Valor</label>
                    <input type="text" id="inputValor" class="form-control" placeholder="0.00" required="" autofocus="">
                </div>
                <div class="mt-4 col-md-12">
                <label for="exampleFormControlSelect1">Selecionar Banco</label>
                  <select class="form-control" id="BankSelect">
                    <option value="0" selected>Selecione um Banco Cadastrado</option>
                  </select>
                </div>

                <div class="mt-4 col-md-12"><div id="enterLogin" class="btn btn-lg btn-sucess btn-block">Adcionar novo Banco</div></div>

                <div class="mt-4 col-md-12"><div id="enterLogin" class="btn btn-lg btn-primary btn-block">Enviar</div></div>
            </div>  
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
    <script src="../js/transferir.js"></script>
    <script src="../js/minha-conta.js"></script>
  </body>
  
</html>