<!-- Navigation -->
<!-- INDEX CSS -->
<link href="<?php if ($pageName=='index'){ echo './src/css/menu-topo.css'; }else{ echo '../css/menu-topo.css';} ?>" rel="stylesheet">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-center header darkTheme">
    <a class="navbar-brand" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">
      <div><img class="headerLogo" src="<?php if($pageName=='index') { echo 'img/icone_topo_branca.png'; } else {  echo '../../img/icone_topo_branca.png'; } ?>" /></div>
    </a>
    <button class="navbar-toggler" style="color: #ffffff;"type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse mx-auto" id="navbarSupportedContent">
      <ul class="navbar-nav myMenu">
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='index'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='sou-cliente'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './sou-cliente'; }else{ echo '../../sou-cliente';} ?>">Sou Cliente</a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='sou-profissional'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './sou-profissional'; }else{ echo '../../sou-profissional';} ?>">Sou Profissional</a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='quero-aprender'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './quero-aprender'; }else{ echo '../../quero-aprender';} ?>">Quero Aprender</a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='blog'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './blog'; }else{ echo '../../blog';} ?>">Blog</a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link <?php if ($pageName=='app'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './app'; }else{ echo '../../app';} ?>"><strong>APP Jobex</strong></a>
        </li>
        <li class="nav-item mx-auto">
          <a class="nav-link myAccountButton <?php if ($pageName=='login'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './login'; }else{ echo '../../login';} ?>" style="color: #009DBE;">Minha Conta <i
              class="far fa-user"></i></a>
        </li>
      </ul>
    </div>

  </nav>
  <!-- END HEADER -->