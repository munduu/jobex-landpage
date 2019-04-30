$(function() {

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

    $.post("../controller/saldo.php", { email: readCookie('mail'), senha: readCookie('pass') }, function(result){
        console.log(result);

        $(".dias").append(''+ Math.floor(result.result.dias) + '');
        $(".saldo").append(''+ result.result.valor+ '');

    },'json');

    $.post("../controller/banklist.php", { email: readCookie('mail'), senha: readCookie('pass') }, function(result){
        console.log(result)

        for(var i = 0; i < result.result.length; i++) {
            $('#BankSelect').append('<option value="'+ result.result[i].id +'">BANCO: '+ result.result[i].nome_banco +' AG: '+ result.result[i].n_conta +' CC: '+ result.result[i].n_conta +'</option>');
        }
    },'json');
});