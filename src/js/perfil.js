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
              '<h2 class="card-title" style="color:#0000ff;">'+ result.result.perfil[i].nome +'</h2>'+
              '<div class="row">'+
                '<div class="col-8">'+
                  '<p class="card-text"><strong>Telefone:</strong> ('+ result.result.perfil[i].area +') '+ result.result.perfil[i].telefone +'</p>'+
                  '<p class="card-text"><strong>E-mail:</strong> '+ result.result.perfil[i].email +'</p>'+
                  '<p class="card-text"><strong>Observação:</strong> '+ result.result.perfil[i].obs +'</p>'+
                  '<p class="card-text"><strong>Aceita Cartão:</strong> '+ aceita_cartao +'</p>'+
                  '<p class="card-text"><strong>Cobra Visita?</strong> '+ cobra_visita +'</p>'+
                  '<p class="card-text"><strong>Emite Nota?</strong> '+ mei +'</p>'+
                '</div>'+
                '<div class="col-4">'+
                  '<div class="card">'+
                    '<div class="card-header">Saldo</div>'+
                    '<ul class="list-group list-group-flush">'+
                      '<li class="list-group-item">Valor J$ 10.00 = R$ 10.00</li>'+
                      '<li class="list-group-item">Dias 30</li>'+
                    '</ul>'+
                  '</div>'+
                '</div>'+
              '</div>'+
          '</div>'+
          '<div class="card-footer text-muted">'+
            '<a class="btn btn-primary" style="margin:15px;" href="#" role="button" aria-pressed="true"><i class="fa fa-plus-circle"></i> Extrato Geral</a>'+
            '<a class="btn btn-primary" style="margin:15px;" href="#" role="button" aria-pressed="true"><i class="fa fa-arrow-alt-circle-down"></i> Saque</a>'+
            '<a class="btn btn-primary" style="margin:15px;" href="#" role="button" aria-pressed="true"><i class="fa fa-exchange-alt"></i> Transferir Créditos</a>'+
            '<a class="btn btn-success" style="margin:15px;" href="#" role="button" aria-pressed="true"><i class="fa fa-credit-card"></i> Comprar</a>'+
          '</div>'+
        '</div>');

        if(result.result.perfil[i].img_url != null) {
          $( "#img_perfil_detail" + id ).html('<img class="bd-placeholder-img rounded-circle" width="140" height="140" src="'+ url_geral +'jobex-api/public/'+ result.result.perfil[i].img_url +'" />');
        } else {
          $( "#img_perfil_detail" + id ).html('<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>');
        }

        if(stars == 0){
          $('#star1_detail'+id).css({"color": "#ffc107"}); 
          $('#star2_detail'+id).css({"color": "#CCCCCC"}); 
          $('#star3_detail'+id).css({"color": "#CCCCCC"}); 
          $('#star4_detail'+id).css({"color": "#CCCCCC"}); 
          $('#star5_detail'+id).css({"color": "#CCCCCC"});
        } else if( stars == 1){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#CCCCCC"});
          $('#star3_detail'+id).css({"color": "#CCCCCC"});
          $('#star4_detail'+id).css({"color": "#CCCCCC"});
          $('#star5_detail'+id).css({"color": "#CCCCCC"});
        } else if( stars == 2){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#CCCCCC"});
          $('#star4_detail'+id).css({"color": "#CCCCCC"});
          $('#star5_detail'+id).css({"color": "#CCCCCC"});
        } else if( stars == 3){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#ffc107"});
          $('#star4_detail'+id).css({"color": "#CCCCCC"});
          $('#star5_detail'+id).css({"color": "#CCCCCC"});
        } else if( stars == 4){
          $('#star1_detail'+id).css({"color": "#ffc107"});
          $('#star2_detail'+id).css({"color": "#ffc107"});
          $('#star3_detail'+id).css({"color": "#ffc107"});
          $('#star4_detail'+id).css({"color": "#ffc107"});
          $('#star5_detail'+id).css({"color": "#CCCCCC"});
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