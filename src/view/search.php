<?php include('../src/controller/config.php'); ?>
<?php $pageName = 'search'; ?>
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
  <link rel="stylesheet" href="../css/app.css">
  <!-- INDEX CSS -->
  <link href="../css/index.css" rel="stylesheet">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">

    
      <div class="container marketing">

          <div class="form-row text-center">
              <div class="input-group mb-3">
                <input id="tags" type="text" class="form-control text-center buscar searchBox" autocomplete="off" value=""
                  placeholder="buscar profissional" aria-label="buscar profissional" aria-describedby="basic-addon2">
                <input id="tagid"type="hidden">
                <div class="input-group-append">
                  <button class="btn btn-outline-secondary buscar searchButton" type="button">
                    <img width="20" height="20" class="buscar" src="../../img/icone_branco_fundo_transparente.png" />
                  </button>
                </div>
              </div>
              <div class="col-md-12 text-center">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                  Busca Avançada
                </button>
              </div>
          </div>

          <!-- Three columns of text below the carousel -->
          <div id="search" class="row" style="margin-top: 40px; display: none;">
          </div><!-- /.row -->

          <div id="searchDetail" style="margin-top: 40px; display: none;"></div>
    
        </div>
  </div>

  <!-- END CONTENT -->

  <!--modal busca-->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Busca Avançada</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <div class="form-group mb-2">
                <label for="exampleFormControlSelect2">Estado:</label>
                <select class="form-control" id="buscaEstado">
                  <option>Selecione uma opção</option>
                </select>
              </div>
              <label for="exampleFormControlSelect2">Cidade:</label>
              <div class="form-group mb-2">
                <input class="form-control" style="display:none;" id="buscaCidadeList" list="buscaCidade">
                <datalist id="buscaCidade">
                  <option>Selecione uma opção</option>
                </datalist>
              </div>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Profissão:</label>
              <input type="text" class="form-control" disabled id="buscaProfissao" placeholder="Buscar...">
            </div>
            <div class="form-group">
                <div class="form-group mb-2">
                  <label for="exampleFormControlSelect2">Especialidades:</label>
                  <select class="form-control" id="buscaEspecialidades">
                    <option value="0">Selecione uma opção</option>
                  </select>
                </div>
              </div>
            <div class="form-group">
              <div class="form-group mb-2">
                <label for="exampleFormControlSelect2">Previsão:</label>
                <select class="form-control" id="buscaPrevisao">
                  <option value="0">Selecione uma opção</option>
                  <option value="hoje">Para Hoje</option>
                  <option value="amanha">Para Amanhã</option>
                  <option value="outro">Outra Data</option>
                </select>
              </div>
            </div>
            <div id="divBuscaData" class="form-group" style="display: none;">
              <label for="message-text" class="col-form-label">Seleciona uma Data:</label>
              <input type="date" class="form-control" id="buscaData" placeholder="Buscar...">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          <button type="button" class="btn btn-primary">Buscar</button>
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
    <script src="../js/search.js"></script>
  </body>
  
</html>