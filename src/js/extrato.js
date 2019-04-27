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
            $('.list-group').append('<p class="list-group-item list-group-item-action">'+ 
                result.result.list[i].obs +
                '<br>'+
                '<span style="margin-left:20px; color: #009DBE;"><i class="fa fa-calendar" aria-hidden="true"></i> '+ result.result.list[i].data_cad.substring(0, 10).split("-").reverse().join("/") +
                '</span> <span style="color: #009DBE;"><i class="fa fa-money" aria-hidden="true"></i> R$ '+ result.result.list[i].valor +
            '</span></p>');
        }
    },'json');
});