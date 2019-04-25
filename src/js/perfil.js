var url_geral = 'http://v22.soujobex.com.br/';

$(function() {

  $.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results==null) {
       return null;
    }
    return decodeURI(results[1]) || 0;
  }

  function createCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";               

    document.cookie = name + "=" + value + expires + "; path=/";
  }

  function eraseCookie(name) {
    createCookie(name, "", -1);
  }

  if($.urlParam('id_user')){

    $.get(url_geral+"perfil-profissional-land", { id_user: $.urlParam('id_user') }, function(result){

        console.log(result);

        var i = 0;

        let stars = (result.result.perfil[i].media_stars != null) ? result.result.perfil[i].media_stars : 0;
        let id = result.result.perfil[i].id_user;

        if(result.result.perfil[i].aceita_cartao == 1) { var aceita_cartao = "sim"; } else { var aceita_cartao = "não"; }
        if(result.result.perfil[i].cobra_visita == 1) { var cobra_visita = "sim"; } else { var cobra_visita = "não"; }
        if(result.result.perfil[i].mei == 1) { var mei = "sim"; } else { var mei = "não"; }

        $( "#searchDetail" ).html('<div class="card text-center">'+
          '<div id="img_perfil_detail'+ result.result.perfil[i].id_user +'" class="card-header"></div>'+
          '<div class="card-body">'+
            '<h5 class="card-title">'+ result.result.perfil[i].nome +'</h5>'+
            '<p class="card-text">Telefone: ('+ result.result.perfil[i].area +') '+ result.result.perfil[i].telefone +'</p>'+
            '<p class="card-text">E-mail: '+ result.result.perfil[i].email +'</p>'+
            '<p class="card-text">Observação: '+ result.result.perfil[i].obs +'</p>'+
            '<p class="card-text">Aceita Cartão: '+ aceita_cartao +'</p>'+
            '<p class="card-text">Cobra Visita? '+ cobra_visita +'</p>'+
            '<p class="card-text">Emite Nota? '+ mei +'</p>'+
          '</div>'+
          '<div class="card-footer text-muted">'+
            '<p style="text-align: center; margin: 5px;">'+
              '<i id="star1_detail' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
              '<i id="star2_detail' + id + '" class="fa fa-star" aria-hidden="true"></i>'+ 
              '<i id="star3_detail' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
              '<i id="star4_detail' + id + '" class="fa fa-star" aria-hidden="true"></i>'+ 
              '<i id="star5_detail' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
            '</p>'+
          '</div>'+
        '</div>');

        if(result.result.perfil[i].img_url != null) {
          $( "#img_perfil_detail" + id ).html('<img class="bd-placeholder-img rounded-circle" width="140" height="140" src="'+ url_geral +'jobex-api/public/'+ result.result.perfil[i].img_url +'" />');
        } else {
          $( "#img_perfil_detail" + id ).html('<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>');
        }

        if(stars == 0){
          $('#star1_detail'+id).css({"color": "#666"}); 
          $('#star2_detail'+id).css({"color": "#666"}); 
          $('#star3_detail'+id).css({"color": "#666"}); 
          $('#star4_detail'+id).css({"color": "#666"}); 
          $('#star5_detail'+id).css({"color": "#666"});
        } else if( stars == 1){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#666"});
          $('#star3_detail'+id).css({"color": "#666"});
          $('#star4_detail'+id).css({"color": "#666"});
          $('#star5_detail'+id).css({"color": "#666"});
        } else if( stars == 2){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#666"});
          $('#star4_detail'+id).css({"color": "#666"});
          $('#star5_detail'+id).css({"color": "#666"});
        } else if( stars == 3){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#ffc107"});
          $('#star4_detail'+id).css({"color": "#666"});
          $('#star5_detail'+id).css({"color": "#666"});
        } else if( stars == 4){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#ffc107"});
          $('#star4_detail'+id).css({"color": "#ffc107"});
          $('#star5_detail'+id).css({"color": "#666"});
        } else if( stars == 5){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#ffc107"});
          $('#star4_detail'+id).css({"color": "#ffc107"});
          $('#star5_detail'+id).css({"color": "#ffc107"});
        }

        $('#search').hide();
        $('#searchDetail').show();
    });
  }

  $('.logout').click(function() {
    eraseCookie('id_user');
    eraseCookie('mail');
    eraseCookie('pass');
    window.location.href = "../../login";
  });
});