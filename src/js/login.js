var url_geral = 'http://v22.soujobex.com.br/';

$(function() {

  $('#enterLogin').click(function() {
    var email = $('#inputEmail').val();
    var senha = $('#inputPassword').val();

    //window.location.href = "search.html?id_user=55";

    if(email == ''){
      alert('E-mail Vazio!');
    } 

    if(senha == ''){
      alert('Senha Vazia!');
    } 

    if(senha.length < 6){
      alert('Senha menor que 6 dígitos!');
    } 

    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "http://v22.soujobex.com.br/auth",
      "method": "GET",
      "headers": {
        "email": "suporte@munduu.com",
        "senha": "123456",
        "Content-Type": "application/json",
        "cache-control": "no-cache"      
      }
    }
    
    $.ajax(settings).done(function (response) {
      console.log(response);
    });

  });
});