var url_geral = 'http://v22.soujobex.com.br/';

$(function() {

  if(readCookie('id_user')){

    $.get(url_geral+"perfil-profissional-land", { id_user: readCookie('id_user') }, function(result){

        console.log(result);

        $('#perfil_nome').html('Olá, '+ result.result.perfil[0].nome +' ');

    });
  } else {
        $('#perfil_nome').html('Minha Conta ');
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

  $.post("../controller/contato.php", { 
    nome: $('#newsBottonNome').val(), 
    email: $('#newsBottonEmail').val() 
  }, function(result){
    console.log(result);
  },'json');

});