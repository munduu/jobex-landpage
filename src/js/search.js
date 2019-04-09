var url_geral = 'http://v22.soujobex.com.br/';

$(function() {

  $.post("http://v22.soujobex.com.br/proposta/selecionar-profissional-land", function(result){
    for(var i = 0; i < result.result.list.data.length; i++) {

      let stars = (result.result.list.data[i].media_stars != null) ? result.result.list.data[i].media_stars : 1;

      let id = result.result.list.data[i].id;

      $( "#search" ).append('<div class="col-lg-4">'+
        '<p id="img_perfil' + id + '" style="text-align: center; margin: 5px;"></p>'+
        '<h4 style="text-align: center; margin: 5px;">'+ result.result.list.data[i].nome +'</h4>'+
        '<p style="text-align: center; margin: 5px;">'+
          '<i id="star1' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
          '<i id="star2' + id + '" class="fa fa-star" aria-hidden="true"></i>'+ 
          '<i id="star3' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
          '<i id="star4' + id + '" class="fa fa-star" aria-hidden="true"></i>'+ 
          '<i id="star5' + id + '" class="fa fa-star" aria-hidden="true"></i>'+
        '</p>'+
        '<p style="text-align: center; margin: 5px;"><a class="btn btn-secondary" href="#" role="button">Tel: ( '+ result.result.list.data[i].area +' ) '+ result.result.list.data[i].telefone +'</a></p>'+
      '</div>');

      if(result.result.list.data[i].img_url != null) {
        $( "#img_perfil" + id ).html('<img class="bd-placeholder-img rounded-circle" width="140" height="140" src="'+ url_geral +'jobex-api/public/'+ result.result.list.data[i].img_url +'" />');
      } else {
        $( "#img_perfil" + id ).html('<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>');
      }

      if(stars == 0){
        $('#star1'+id).css({"color": "#666"}); 
        $('#star2'+id).css({"color": "#666"}); 
        $('#star3'+id).css({"color": "#666"}); 
        $('#star4'+id).css({"color": "#666"}); 
        $('#star5'+id).css({"color": "#666"});
      } else if( stars == 1){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#666"});
        $('#star3'+id).css({"color": "#666"});
        $('#star4'+id).css({"color": "#666"});
        $('#star5'+id).css({"color": "#666"});
      } else if( stars == 2){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#666"});
        $('#star4'+id).css({"color": "#666"});
        $('#star5'+id).css({"color": "#666"});
      } else if( stars == 3){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#666"});
        $('#star5'+id).css({"color": "#666"});
      } else if( stars == 4){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#ffc107"});
        $('#star5'+id).css({"color": "#666"});
      } else if( stars == 5){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#ffc107"});
        $('#star5'+id).css({"color": "#ffc107"});
      }
    }
  });
});