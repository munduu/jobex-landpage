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

        for(var i = 0; i < result.list.length; i++) {
            $('.list-group').append('<a href="#" class="list-group-item list-group-item-action">'+ result.list.obs +'</a>');
        }
    },'json');
});