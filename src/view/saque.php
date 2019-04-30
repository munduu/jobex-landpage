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
            <a class="btn btn-primary formInput" style="margin:15px;" href="../../extrato" role="button" aria-pressed="true"><i class="fa fa-plus-circle"></i> Extrato Geral</a>
            <a class="btn btn-primary formInput" style="margin:15px;" href="../../saque" role="button" aria-pressed="true"><i class="fa fa-arrow-alt-circle-down"></i> Saque</a>
            <a class="btn btn-primary formInput" style="margin:15px;" href="../../transferir" role="button" aria-pressed="true"><i class="fa fa-exchange-alt"></i> Transferir Créditos</a>
            <a class="btn btn-success formInput" style="margin:15px;" href="../../planos" role="button" aria-pressed="true"><i class="fa fa-credit-card"></i> Comprar</a>
        </div>

        <div style="text-align:center;"  class="card">
        <div class="card-header"><h4>Saldo</h4></div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><span style=" color: #009DBE"><strong>J$</strong></span> <span class="saldo"></span> = <span style=" color: #009DBE"><strong>R$</strong></span> <span class="saldo"></span><br> <span style=" color: #009DBE"><strong>Dias</strong></span>: <span class="dias"></span></li>
            </ul>
        </div>

        <div style="text-align:center;"  class="card">
            <div class="form-signin">
                <div class="mt-4 col-md-12">
                    <label for="inputValor">Valor</label>
                    <input type="text" id="inputValor" class="form-control formInput" placeholder="0.00" required="" autofocus="">
                </div>
                <div class="mt-4 col-md-12">
                <label for="exampleFormControlSelect1">Selecionar Banco</label>
                  <select class="form-control formInput" id="BankSelect">
                    <option value="0" selected>Selecione um Banco Cadastrado</option>
                  </select>
                </div>

                <div class="mt-4 col-md-12"><div id="enterLogin" class="btn btn-lg btn-success btn-block formInput" data-toggle="modal" data-target="#exampleModal">Adcionar novo Banco</div></div>

                <div class="mt-4 col-md-12"><div id="enterLogin" class="btn btn-lg btn-primary btn-block formInput">Enviar</div></div>
            </div>  
        </div>
    
    </div>
  </div>

  <!-- END CONTENT -->

  <!--modal busca-->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Adicionar Banco para Saque</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Nome do Titular:</label>
              <input type="text" class="form-control" id="nomeTitular" placeholder="Digite o Nome do Titular">
            </div>
            <div class="form-group">
              <div class="form-group mb-2">
                <label for="exampleFormControlSelect2">Nome do Banco:</label>
                <select class="form-control" id="buscaPrevisao">
                  <option value="001">001 - Banco do Brasil</option>
                  <option value="237">237 - Bradesco</option>
                  <option value="104">104 - Caixa Econômica Federal</option>
                  <option value="341">341 - Itaú</option>
                  <option value="033">033 - Santander</option>
                  <option value="090-2">090-2 - Sicoob</option>
                  <option value="389">389 - Mercantil do brasil</option>
                  <option value="070">070 - BRB</option>
                </select>
              </div>
            </div>
            <div id="divBuscaData" class="form-group">
              <label for="message-text" class="col-form-label">CPF/CNPJ:</label>
              <input type="text" class="form-control" id="buscaData" placeholder="Digite seu CPF ou CNPJ">
            </div>
            <div class="form-group">
              <div class="form-group mb-2">
                <label for="exampleFormControlSelect2">Tipo Banco:</label>
                <select class="form-control" id="buscaPrevisao">
                  <option value="CORRENTE">CORRENTE</option>
                  <option value="POUPANCA">POUPANCA</option>
                </select>
              </div>
            </div>
            <div id="divBuscaData" class="form-group">
              <label for="message-text" class="col-form-label">Agência:</label>
              <input type="text" class="form-control" id="buscaData" placeholder="Digite sua Agência">
            </div>
            <div id="divBuscaData" class="form-group">
              <label for="message-text" class="col-form-label">Conta:</label>
              <input type="text" class="form-control" id="buscaData" placeholder="Digite sua Conta">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          <button type="button" class="btn btn-success">Cadastrar</button>
        </div>
      </div>
    </div>
  </div>
  <!--modal busca-->

    <!-- FOOTER -->
    <?php include('../controller/footer.php'); ?>
  
    <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="../js/saque.js"></script>
    <script src="../js/minha-conta.js"></script>
  </body>
  
</html>