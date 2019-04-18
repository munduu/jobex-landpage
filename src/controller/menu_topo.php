<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light text-center header">
    <a class="navbar-brand" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">
      <div><img width="35" height="35" src="<?php if($pageName=='index') { echo 'img/icone_topo.png'; } else {  echo '../../img/icone_topo.png'; } ?>" /></div>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo '#'; }else{ echo '../../';} ?>">home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo './sou-cliente'; }else{ echo '../../sou-cliente';} ?>">sou cliente</a>
        </li>
        <li class="nav-item">
          <button type="button" class="btn btn-light headerButton">
            <a class="nav-link" href="<?php if ($pageName=='index'){ echo './sou-profissional'; }else{ echo '../../sou-profissional';} ?>">sou profissional</a>
          </button>

        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo './quero-aprender'; }else{ echo '../../quero-aprender';} ?>">quero aprender</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo './blog'; }else{ echo '../../blog';} ?>">blog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php if ($pageName=='index'){ echo './app'; }else{ echo '../../app';} ?>"><strong>APP Jobex</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link myAccountButton" href="<?php if ($pageName=='index'){ echo './login'; }else{ echo '../../login';} ?>" style="color: #009DBE;">minha conta <i
              class="far fa-user"></i></a>
        </li>
      </ul>
    </div>

  </nav>
  <!-- END HEADER -->