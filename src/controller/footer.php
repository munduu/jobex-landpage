<!-- FOOTER -->
<footer class="footer bg-light">
    <div class="container">
      <div class="row myFooter grid">
        <!-- APP DOWNLOAD -->
        <div class="col-lg-4 myList">
          <img src="<?php if ($pageName=='index'){ echo './img/logo-jobex-completa-cinza-claro.png'; }else{ echo '../../img/logo-jobex-completa-cinza-claro.png';} ?>" alt="">
          <p class="downloadText">Baixe grátis o APP</p>
          <button type="button" class="btn btn-light btn-sm mr-2 downloadAppButton">
            <i class="fab fa-apple mr-1"></i>App Store
          </button>
          <button type="button" class="btn btn-light btn-sm downloadAppButton">
            <i class="fab fa-apple mr-1"></i>Google Play
          </button>
        </div>
        <!-- FOOTER MENU -->
        <div class="col-lg-2">
          <ul class="myList mt-md">
            <li>
              <a href="<?php if ($pageName=='index'){ echo './cadastrar'; }else{ echo '../../cadastrar';} ?>">Quem Somos</a>
            </li>
            <li>
              <a href="<?php if ($pageName=='index'){ echo './contato'; }else{ echo '../../contato';} ?>">Contato</a>
            </li>
            <li>
              <a href="<?php if ($pageName=='index'){ echo './jobex-junior'; }else{ echo '../../jobex-junior';} ?>">Jobex Junior</a>
            </li>
          </ul>
        </div>
        <div class="col-lg-2">
          <ul class="myList">
            <li>
              <a href="<?php if ($pageName=='index'){ echo './politica-de-privacidade'; }else{ echo '../../politica-de-privacidade';} ?>">Política de Privacidade</a>
            </li>
            <li>
              <a href="<?php if ($pageName=='index'){ echo './termos-de-uso'; }else{ echo '../../termos-de-uso';} ?>">Termos de Uso</a>
            </li>
            <li>
              <a href="<?php if ($pageName=='index'){ echo './seguranca'; }else{ echo '../../seguranca';} ?>">Segurança</a>
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
              <input type="text" class="form-control buscar formInput" placeholder="*nome">
            </li>
            <li>
              <input type="email" class="form-control buscar formInput" placeholder="*e-mail">
            </li>
            <li>
              <button type="button" class="btn btn-primary registerButton">cadastrar</button>
            </li>
          </ul>
        </div>
      </div>
      <!-- SOCIAL BAR -->
      <div class="col-12 text-center socialBar">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-whatsapp"></i></a>
        <a href="#"><i class="fab fa-google-plus-g"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-snapchat-ghost"></i></a>
        <a href="#"><i class="fab fa-linkedin-in"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
        <p class="text-muted text-center mt-4 mb-4 mb-lg-0 jobex">&copy; 2019 - Jobex</p>
      </div>
  </footer>
  <!-- END FOOTER -->