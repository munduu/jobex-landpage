<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'fale-conosco'; ?>
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
  <link rel="stylesheet" href="../css/fale-conosco.css">
</head>

<body>
  
  <?php include('../controller/menu_topo.php'); ?>

  <!-- CONTENT -->
  <div class="container">
    <!-- CONTACT FORM -->
    <form class="formRegister row m-auto">
      <div class="formHeader text-center">
        <div class="headerTitle">FALE CONOSCO</div>
        <span>Para entrar em contato conosco, basta preencher o formulário abaixo:</span>
      </div>
      <div class="formContent">
        <label for="name" class="mt-1">Nome*</label>
        <input type="text" name="name" class="form-control formInput" placeholder="Nome">
        <label for="name" class="mt-1">Email*</label>
        <input type="text" name="email" class="form-control formInput" placeholder="Email">
        <label for="name" class="mt-1">Celular*</label>
        <input type="text" name="phone" class="form-control formInput" placeholder="Celular">
        <label for="name" class="mt-1">Cidade*</label>
        <input type="text" name="city" class="form-control formInput" placeholder="Cidade">
        <!-- COMBO BOX -->
        <label for="name" class="mt-1">Assunto*</label>
        <select id="assunto" class="form-control" name="content" >
            <option selected disabled><strong>SELECIONE*</strong></option>
            <option>Sugestão/ Reclamação</option>
            <option>Dúvida</option>
            <option>Comercial</option>
            <option>Proposta  </option>
        </select>
        <label for="name" class="mt-1">Mensagem*</label>
        <!-- MESSAGE  -->
        <textarea class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3"></textarea>
        <!-- SEND BUTTON -->
        <button type="submit" class="w-100 btn sendButton mt-3">Enviar</button>
      </div>
    </form>

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