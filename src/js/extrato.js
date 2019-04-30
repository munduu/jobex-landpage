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

    $.post("../controller/extrato.php", { email: readCookie('mail'), senha: readCookie('pass') }, function(result){
        console.log(result)

        for(var i = 0; i < result.result.list.length; i++) {
            $('.listG').append('<div class="row" style="margin: 10px 0; padding: 5px;"><div class="col">'+ 
                result.result.list[i].obs +
                '</div><div class="col">'+
                '<span style="color: #009DBE;"><i class="fa fa-calendar" aria-hidden="true"></i></span> '+ result.result.list[i].data_cad.substring(0, 10).split("-").reverse().join("/") +
                '</div> <div class="col"><span style="color: #009DBE;"><i class="fa fa-money" aria-hidden="true"></i></span> R$ '+ result.result.list[i].valor +
            '</div></div><hr>');
        }
    },'json');

    $.post("../controller/saldo.php", { email: readCookie('mail'), senha: readCookie('pass') }, function(result){
        console.log(result);

        $(".dias").append(''+ Math.floor(result.result.dias) + '');
        $(".saldo").append(''+ result.result.valor+ '');

    },'json');
});