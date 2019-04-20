<?php include('../../src/controller/config.php'); ?>
<?php $pageName = 'jobex-junior'; ?>
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
    <link rel="stylesheet" href="../css/jobex-junior.css">
</head>

<body>

    <?php include('../controller/menu_topo.php'); ?>

    <!-- CONTENT -->
    <div class="container">
        <div class="myContent text-center">
            <img src="../../img/jobex-junior.jpg" class="img-fluid" alt="Responsive image">

            <div class="text-left">
                <p class="jobexJuniorSubtitle">
                    Nossa linda juventude
                </p>
                <p class="effectText">"O caminho do bem é estreito, mas esses jóvens são determinados e sabem aonde
                    querem chegar."</p>
                <!-- JOBEX ICON -->
                <div class="icoContainer">
                    <img src="../../img/jobex-junior-ico.jpg">
                </div>
                <!-- TEXT BLOCK -->
                <p class="textBlock">
                    Mussum Ipsum, cacilds vidis litro abertis. Detraxit consequat et quo num tendi nada. Não sou faixa
                    preta cumpadi, sou preto inteiris, inteiris. Atirei o pau no gatis, per gatis num morreus. Praesent
                    vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget.

                    Diuretics paradis num copo é motivis de denguis. Mais vale um bebadis conhecidiss, que um alcoolatra
                    anonimis. Suco de cevadiss deixa as pessoas mais interessantis. Quem num gosta di mé, boa gentis num
                    é.
                </p>
                <!-- LEARN BUTTON -->
                <button type="button" class="btn btn-lg learnButton">Quero Aprender</button>
                <hr>
                <!-- OBSERVATION -->
                <p class="observationText">*Para se cadastrar como <strong>Jobex Jr.</strong> é necessário estar
                    estudando,
                    ter mais de 17 anos e concluir o curso de qualificação na área escolhida.</p>
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
</body>

</html>