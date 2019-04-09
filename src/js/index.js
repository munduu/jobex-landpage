$(function() {

  //lista profissões
  var availableTags = []
  $.post("http://v22.soujobex.com.br/servicosLand", function(result){
    for(var i = 0; i < result.result.list.data.length; i++) {
      availableTags[i] = result.result.list.data[i].nome;
      $( "#tags" ).autocomplete({ source: availableTags });
    }
  });

});