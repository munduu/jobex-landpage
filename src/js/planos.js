$(function() {
//lista profissões
    $.get("http://v22.soujobex.com.br/planos", function(result){
        for(var i = 0; i < result.result.list.data.length; i++) {
            $('#planos').append('<a href="../../comprar-creditos" class="planosLink">'+
                '<div class="row mb-3">'+
                    '<div class="col-md-4 themed-grid-col">'+
                        '<div class="row mb-3">Plano</div>'+
                        '<div class="row mb-3"><h1>PRO '+ (i+1) + '</h1></div>'+
                    '</div>'+
                    '<div class="col-md-4 themed-grid-col">'+
                        '<div class="row mb-3">R$ '+ result.result.list.data[i].preco +'</div>'+
                        '<div class="row mb-3">'+ result.result.list.data[i].tempo +' dias</div>'+
                        '<div class="row mb-3">'+ result.result.list.data[i].obs +'</div>'+
                    '</div>'+
                    '<div class="col-md-4 themed-grid-col">'+
                        '<div class="row mb-3"><i class="fa fa-chevron-right"></i></div>'+
                    '</div>'+
                '</div>'+
            '</a>');
        }
    });
});