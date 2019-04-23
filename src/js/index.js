$(function() {

  //lista profissões
  var availableTags = []
  var e = []
  $.post("http://v22.soujobex.com.br/servicosLand", function(result){
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
      window.location.href = './src/view/search.php?tag=' + tag + '&name=' + name + '';
    } else {
      alert('Selecione Pelo menos uma Profissão');
    } 
  });

});