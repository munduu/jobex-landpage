$(function() {

  function createCookie(name, value, days) {
      if (days) {
          var date = new Date();
          date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
          var expires = "; expires=" + date.toGMTString();
      }
      else var expires = "";               

      document.cookie = name + "=" + value + expires + "; path=/";
  }

  function readCookie(name) {
      var nameEQ = name + "=";
      var ca = document.cookie.split(';');
      for (var i = 0; i < ca.length; i++) {
          var c = ca[i];
          while (c.charAt(0) == ' ') c = c.substring(1, c.length);
          if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
      }
      return null;
  }

  function eraseCookie(name) {
      createCookie(name, "", -1);
  }

  console.log(readCookie('id_user'));

  if(readCookie('id_user') > 0){
    window.location.href = "../../perfil?id_user="+readCookie('id_user');
  }

  $('#enterLogin').click(function() {
    var email = $('#inputEmail').val();
    var senha = $('#inputPassword').val();

    if(email == ''){
      alert('E-mail Vazio!');
      return false;
    } 

    if(senha == ''){
      alert('Senha Vazia!');
      return false;
    } 

    if(senha.length < 6){
      alert('Senha menor que 6 dígitos!');
      return false;
    } 

    $.post("../controller/login.php", { email: email, senha: senha}, function(result){
        console.log(result)
        if(result[0]){
          $("#alertLogin").hide();
          createCookie('mail', email, 7);
          createCookie('pass', senha, 7);
          createCookie('id_user', result[0].id_user, 7);

          window.location.href = "../../perfil?id_user="+result[0].id_user;
        }else{
          $("#alertLogin").show();
          $("#alertLogin").html(result.message+
            '<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
            '<span aria-hidden="true">&times;</span>'+
          '</button>');
        }
    },'json');

  });
});