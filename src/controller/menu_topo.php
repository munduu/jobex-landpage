<!-- Navigation -->
<!-- INDEX CSS -->
<link href="<?php if ($pageName=='index'){ echo './src/css/menu-topo.css'; }else{ echo '../css/menu-topo.css';} ?>" rel="stylesheet">

<nav class="navbar navbar-center navbar-expand-xl navbar-dark bg-dark text-center header darkTheme">
    
    <!-- navbar BRAND -->
    <a class="navbar-brand" id="navbarBrand" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">
      <img class="headerLogo" src="<?php if($pageName=='index') { echo 'img/icone_topo_branca.png'; } else {  echo '../../img/icone_topo_branca.png'; } ?>" />
    </a>
    <!-- TOGGLE BUTTON -->
    <button class="navbar-toggler" style="color: #ffffff;"type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse menuContainer" id="navbarSupportedContent">
      <!-- LEFT -->
      <ul class="navbar-nav navbar-left myMenu">
        <li class="nav-item" id="logoToggle">
          <a class="nav-link <?php if ($pageName=='index'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($pageName=='sou-cliente'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './sou-cliente'; }else{ echo '../../sou-cliente';} ?>">Sou Cliente</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($pageName=='sou-profissional'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './sou-profissional'; }else{ echo '../../sou-profissional';} ?>">Sou Profissional</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($pageName=='quero-aprender'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './quero-aprender'; }else{ echo '../../quero-aprender';} ?>">Quero Aprender</a>
        </li>
      </ul>
      <!-- CENTER -->
      <ul class="navbar-center myMenu logoCenterContainer">
        <li class="nav-item" id="logoCenter">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>" id="headerMenu">
            <img class="headerLogo" src="<?php if($pageName=='index') { echo 'img/icone_topo_branca.png'; } else {  echo '../../img/icone_topo_branca.png'; } ?>" />
          </a>
        </li> 
      </ul>
      <!-- RIGHT -->
      <ul class="navbar-nav navbar-left myMenu">
        <li class="nav-item">
          <a class="nav-link <?php if ($pageName=='blog'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './blog'; }else{ echo '../../blog';} ?>">Blog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($pageName=='app'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './app'; }else{ echo '../../app';} ?>"><strong>APP Jobex</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link myAccountButton <?php if ($pageName=='login'){ echo 'activeHeader'; }?>" href="<?php if ($pageName=='index'){ echo './login'; }else{ echo '../../login';} ?>" style="color: #009DBE;"><span id="perfil_nome">Minha Conta </span><i
            class="far fa-user"></i></a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- END HEADER -->