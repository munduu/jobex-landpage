<!-- FOOTER -->
<link rel="stylesheet" href="<?php if ($pageName == 'index') {
                                echo 'src/css/footer.css';
                              } else {
                                echo '../css/footer.css';
                              } ?>">
<footer class="footer bg-dark myFooter">
  <div class="container">
    <div class="row grid">
      <!-- APP DOWNLOAD -->
      <div class="col-lg-4 myList mb-2">
        <img class="myLogo" src="<?php if ($pageName == 'index') {
                                    echo './img/logo-dark.png';
                                  } else {
                                    echo '../../img/logo-dark.png';
                                  } ?>" alt="">
      </div>
      <!-- FOOTER MENU -->
      <div class="col-lg-2">
        <ul class="myList mt-md">
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './quem-somos';
                      } else {
                        echo '../../quem-somos';
                      } ?>">Quem Somos</a>
          </li>
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './contato';
                      } else {
                        echo '../../contato';
                      } ?>">Contato</a>
          </li>
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './jobex-junior';
                      } else {
                        echo '../../jobex-junior';
                      } ?>">Jobex Junior</a>
          </li>
        </ul>
      </div>

      <div class="col-lg-2">
        <ul class="myList">
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './politica-de-privacidade';
                      } else {
                        echo '../../politica-de-privacidade';
                      } ?>">Política de Privacidade</a>
          </li>
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './termos-de-uso';
                      } else {
                        echo '../../termos-de-uso';
                      } ?>">Termos de Uso</a>
          </li>
          <li>
            <a href="<?php if ($pageName == 'index') {
                        echo './seguranca';
                      } else {
                        echo '../../seguranca';
                      } ?>">Segurança</a>
          </li>
        </ul>
      </div>

      <!-- FOOTER REGISTER -->
      <div class="col-lg-4 mt-md">
        <ul class="myList text-center">
          <li>
            <a href="#">Cadastre seu e-mail para receber novidades</a>
          </li>
          <li>
            <input id="newsBottonNome" type="text" class="form-control buscar formInput" placeholder="*nome">
          </li>
          <li>
            <input id="newsBottonEmail" type="email" class="form-control buscar formInput" placeholder="*e-mail">
          </li>
          <li class="d-block d-lg-none">
            <div class="text-center">
              <button type="button" class="btn btn-primary registerButton">cadastrar</button>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="row" class="footerRow">
      <!-- DOWNLOAD BAR -->
      <div class="downloadContainer text-center text-sm-left text-md-left col-12 col-sm-4">
        <p class="downloadText text-center text-sm-left w-100">Baixe grátis o APP</p>
        <a href="http://bit.ly/jobex-applestore">
          <button type="button" class="btn btn-light btn-sm mr-2 downloadAppButton">
            <i class="fab fa-apple mr-1"></i>App Store
          </button>
        </a>
        <a href="http://bit.ly/jobex-googleplay">
          <button type="button" class="btn btn-light btn-sm downloadAppButton">
            <i class="fab fa-google-play mr-1"></i>Google Play
          </button>
        </a>
      </div>
      <!-- SOCIAL BAR -->
      <div class="col-12 text-center socialBar col-12 col-sm-4 mt-3">
        <a href="https://www.facebook.com/jobexbrasil/" style="margin-right:15px;"><i class="fab fa-facebook-f mr-2"></i></a>
        <a href="https://www.instagram.com/jobexbrasil/"><i class="fab fa-instagram mr-2"></i></a>
        <a href="https://www.youtube.com/results?search_query=JobexBrasil" style="margin-left:15px;"><i class="fab fa-youtube"></i></a>
      </div>
      <!-- REGISTER BUTTON FOR LARGE RESOLUTIONS -->
      <div class="col-lg-4 text-center d-none d-lg-block">
        <button type="button" class="btn btn-primary registerButton">cadastrar</button>
      </div>

    </div>

    <p class="text-muted text-center w-100 jobex mt-3">&copy; 2019 - Jobex</p>

</footer>
<!-- END FOOTER -->