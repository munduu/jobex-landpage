$(function() {

    $.urlParam = function (name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results == null) {
          return null;
        }
        return decodeURI(results[1]) || 0;
    }

    if($.urlParam('id') == null){
        $.post("../controller/blog.php", { }, function(result){
            console.log(result)
            for(var i = 0; i < result[0].blog.length; i++) {
                $('.listG').append('<div class="blog-post mt-3"><a href="./blog.php?id=' + result[0].blog[i].id +'"> <img src="https://soujobex.com.br/web/imagem_prod/' + result[0].blog[i].img +'" class="img-fluid"></a>'+
                    '<div class="row">'+
                        '<div class="col-1">'+
                            '<strong class="postDay">' + result[0].blog[i].dia +'</strong><br>'+
                            '<span class="postMonth">' + result[0].blog[i].mes +'</span>'+
                        '</div>'+
                        '<div class="col-11"><h2 class="postTitle"><a href="./blog.php?id=' + result[0].blog[i].id +'">'+ result[0].blog[i].titulo +'</a></h2></div>'+
                    '</div>'+
                    '<p class="postPreview"><a href="./blog.php?id=' + result[0].blog[i].id +'">' + result[0].blog[i].subtitulo + '</a></p>'+
                '<hr>'+
                '</div>'+
            '</div>');
            }
        },'json');
    }

    if($.urlParam('id') != null){
        $.post("../controller/blog.php", { id: $.urlParam('id') }, function(result){
            $('.listG').empty();
            for(var i = 0; i < result[0].blog.length; i++) {
                $('.listG').append('<div class="blog-post mt-3"><img src="https://soujobex.com.br/web/imagem_prod/' + result[0].blog[i].img +'" class="img-fluid">'+
                    '<div class="row">'+
                        '<div class="col-1">'+
                            '<strong class="postDay">' + result[0].blog[i].dia +'</strong><br>'+
                            '<span class="postMonth">' + result[0].blog[i].mes +'</span>'+
                        '</div>'+
                        '<div class="col-11"><h2 class="postTitle">'+ result[0].blog[i].titulo +'</h2></div>'+
                    '</div>'+
                    '<p class="postPreview">' + result[0].blog[i].subtitulo + '</p>'+
                    '<p class="postPreview">' + result[0].blog[i].descricao + '</p>'+
                '<hr>'+
                '</div>'+
            '</div>');
            }
        },'json');
    }
});