$(function() {

  //lista profissões
  var availableTags = []
  var e = []
  $.post("http://v22.soujobex.com.br/servicosLand", function(result){
    for(var i = 0; i < result.result.list.data.length; i++) {
      let nome = result.result.list.data[i].nome[0].toUpperCase() + result.result.list.data[i].nome.substring(1);
      e[i] = {"label": nome,"value": result.result.list.data[i].id}
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

  function searchTag(tag){
    $.post(url_geral + "servicosLand", {search: tag}, function (result) {
      $('#tags').val(result.result.list.data[0].nome);
      $('#tagid').val(result.result.list.data[0].id);
      window.location.href = './src/view/search.php?tag=' + result.result.list.data[0].id + '&name=' + result.result.list.data[0].nome + '';
      console.log(result);
    });
  }

  $('.searchButton').click(function() {
    var tag = $('#tagid').val();
    var name = $('#tags').val();

    console.log(name.length);
    console.log(tag);

    if(name.length > 0 && tag == '') { searchTag(name); }

    if(tag !== ''){
      window.location.href = './src/view/search.php?tag=' + tag + '&name=' + name + '';
    } 
  });

  $(document).on('keypress',function(e) {
    if(e.which == 13 || e.which == 168) {
      var tag = $('#tagid').val();
      var name = $('#tags').val();

      console.log(name.length);
      console.log(tag);

      if(name.length > 0 && tag == '') { searchTag(name); }

      if(tag !== ''){
        window.location.href = './src/view/search.php?tag=' + tag + '&name=' + name + '';
      } 
    }
  });
});