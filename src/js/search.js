var url_geral = 'http://v22.soujobex.com.br/';

$(function() {

  $.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results==null) {
       return null;
    }
    return decodeURI(results[1]) || 0;
  }

  $('#buscaProfissao').click(function() {
    $('#buscaProfissao').val('');
  });

  $('#tags').val($.urlParam('name'));

  $('#buscaProfissao').val($.urlParam('name'));


  $.post(url_geral+"proposta/selecionar-profissional-land", { grupo: $.urlParam('tag') }, function(result){
    for(var i = 0; i < result.result.list.data.length; i++) {

      let stars = (result.result.list.data[i].media_stars != null) ? result.result.list.data[i].media_stars : 1;

      let id = result.result.list.data[i].id;

      $( "#search" ).append('<a href="./search.php?id_user=' + id + '"><div class="col-lg-4">'+
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
      '</div></a>');

      if(result.result.list.data[i].img_url != null) {
        $( "#img_perfil" + id ).html('<img class="bd-placeholder-img rounded-circle" width="140" height="140" src="'+ url_geral +'jobex-api/public/'+ result.result.list.data[i].img_url +'" />');
      } else {
        $( "#img_perfil" + id ).html('<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>');
      }

      if(stars == 0){
        $('#star1'+id).css({"color": "#ffc107"}); 
        $('#star2'+id).css({"color": "#CCCCCC"}); 
        $('#star3'+id).css({"color": "#CCCCCC"}); 
        $('#star4'+id).css({"color": "#CCCCCC"}); 
        $('#star5'+id).css({"color": "#CCCCCC"});
      } else if( stars == 1){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#CCCCCC"});
        $('#star3'+id).css({"color": "#CCCCCC"});
        $('#star4'+id).css({"color": "#CCCCCC"});
        $('#star5'+id).css({"color": "#CCCCCC"});
      } else if( stars == 2){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#CCCCCC"});
        $('#star4'+id).css({"color": "#CCCCCC"});
        $('#star5'+id).css({"color": "#CCCCCC"});
      } else if( stars == 3){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#CCCCCC"});
        $('#star5'+id).css({"color": "#CCCCCC"});
      } else if( stars == 4){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#ffc107"});
        $('#star5'+id).css({"color": "#CCCCCC"});
      } else if( stars == 5){
        $('#star1'+id).css({"color": "#ffc107"});
        $('#star2'+id).css({"color": "#ffc107"});
        $('#star3'+id).css({"color": "#ffc107"});
        $('#star4'+id).css({"color": "#ffc107"});
        $('#star5'+id).css({"color": "#ffc107"});
      }
    }
    $('#search').show();
    $('#searchDetail').hide();
  });

  if($.urlParam('id_user')){

    $.get(url_geral+"perfil-profissional-land", { id_user: $.urlParam('id_user') }, function(result){

        console.log(result);

        var i = 0;

        let stars = (result.result.perfil[i].media_stars != null) ? result.result.perfil[i].media_stars : 1;
        let id = result.result.perfil[i].id_user;

        if(result.result.perfil[i].aceita_cartao == 1) { var aceita_cartao = "sim"; } else { var aceita_cartao = "não"; }
        if(result.result.perfil[i].cobra_visita == 1) { var cobra_visita = "sim"; } else { var cobra_visita = "não"; }
        if(result.result.perfil[i].mei == 1) { var mei = "sim"; } else { var mei = "não"; }

        $( "#searchDetail" ).html('<div class="card text-center">'+
          '<div id="img_perfil_detail'+ result.result.perfil[i].id_user +'" class="card-header"></div>'+
          '<div class="card-body">'+
            '<h5 class="card-title">'+ result.result.perfil[i].nome +'</h5>'+
            '<p class="card-text">Telefone: ('+ result.result.perfil[i].area +') '+ result.result.perfil[i].telefone +'</p>'+
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
          $('#star1_detail'+id).css({"color": "#CCCCCC"}); 
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

  $("#buscaPrevisao").change(function(){
      console.log($(this).val());

      var prev = $(this).val();

      if(prev == 'outro'){
        $('#divBuscaData').show();
      } else {
        $('#divBuscaData').hide();
      }
  });

  //lista profissões
  var availableTags = []
  var e = []
  $.post(url_geral+"servicosLand", function(result){
    for(var i = 0; i < result.result.list.data.length; i++) {
      e[i] = {"label": result.result.list.data[i].nome,"value": result.result.list.data[i].id}
    }
    $("#tags").autocomplete({
        source: e,select: function( event, ui ) {
          event.preventDefault();
          $('#tags').val(ui.item.label);
          $('#tagid').val(ui.item.value);
          console.log(ui.item.label);
          console.log(ui.item.value);
        }
    });
  });

  $('.searchButton').click(function() {
    var tag = $('#tagid').val();
    var name = $('#tags').val();
    if(tag !== ''){
      window.location.href = './search.php?tag=' + tag + '&name=' + name + '';
    } else {
      alert('Selecione Pelo menos uma Profissão');
    } 
  });

  $(document).on('keypress',function(e) {
    if(e.which == 13 || e.which == 168) {
      var tag = $('#tagid').val();
      var name = $('#tags').val();
      if(tag !== ''){
        window.location.href = './search.php?tag=' + tag + '&name=' + name + '';
      } else {
        alert('Selecione Pelo menos uma Profissão');
      } 
    }
  });

  $.get("https://ddd.pricez.com.br/estados.json",  function(result){
    //console.log(result);
    for(var i = 0; i < result.payload.length; i++) {
      //console.log(result.payload[i]);
      $('#buscaEstado').append('<option value="'+ result.payload[i] +'">'+ result.payload[i] +'</option>')
    }
  });

  $('#buscaEstado').change(function() {
    $.get("https://ddd.pricez.com.br/estados/" + $(this).val().toLowerCase() + ".json",  function(result){
      //console.log(result);
      for(var i = 0; i < result.payload.length; i++) {
        //console.log(result.payload[i]);
        $('#buscaCidade').append('<option value="'+ result.payload[i].cidade +'">'+ result.payload[i].cidade +'</option>')
      }
      $('#buscaCidadeList').show();
    });
  });
  
  if($.urlParam('tag')){
    $.get(url_geral+"especialidades", {id_grupo: $.urlParam('tag')}, function(result){
      for(var i = 0; i < result.result.list.length; i++) {
        //console.log(result.result.list[i].nome);
        $('#buscaEspecialidades').append('<option value="'+ result.result.list[i].id +'">'+ result.result.list[i].nome +'</option>')
      }
    });
  }
});