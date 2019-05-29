$(function() {
    $('#enterRegister').click(function() {
      var nome   = $('#inputNome').val();
      var email  = $('#inputEmail').val();
      var senha  = $('#inputSenha').val();
      var rsenha = $('#inputRSenha').val();
  
      if(nome == ''){ alert('Nome Vazio!'); return false; } 
      if(email == ''){ alert('E-mail Vazio!'); return false; } 
      if(senha == ''){ alert('Senha Vazia!'); return false; } 
      if(rsenha == ''){ alert('Repetir Senha Vazia!'); return false; } 
      if(senha.length < 6){ alert('Senha menor que 6 dígitos!'); return false; } 
      if(rsenha.length < 6){ alert('Repetir Senha menor que 6 dígitos!'); return false; }
      if(senha != rsenha){ alert('Senha e Repetir Senha divirgentes!'); return false; }
      if($( "#checkTerms" ).prop( "checked" )== false) { alert('Necessário concordar com Termos de Uso!'); return false; }
  
      $.get("../controller/cadastrar.php?nome="+nome+"&email="+email+"&senha="+senha, function(result){
          console.log(result)
          if(result.success==true){
            window.location.href = "../controller/bemvindo.php?email=" + email;
          }else{
            alert(result.message);
          }
      },'json').fail(function(error) { console.log(error); });
  
    });
});