$(function() {
//lista profissões
    $.get("http://v22.soujobex.com.br/planos", function(result){
        for(var i = 0; i < result.result.list.data.length; i++) {
            $('#planos').append('<button type="button" class="btn planosLink" onclick="window.location=\'../../comprar-creditos?id='+ result.result.list.data[i].id +'\';">'+
                '<div class="row align-items-center mb-3">'+
                    '<div class="col-sm col-md-4 themed-grid-col">'+
                        '<div class="col-sm">Plano</div>'+
                        '<div class="col-sm"><h1>PRO '+ (i+1) + '</h1></div>'+
                    '</div>'+
                    '<div class="col-sm col-md-4 themed-grid-col">'+
                        '<div class="col-sm" style="margin-bottom:10px;">R$ '+ result.result.list.data[i].preco +'</div>'+
                        '<div class="col-sm" style="margin-bottom:10px;">'+ result.result.list.data[i].tempo +' dias</div>'+
                        '<div class="col-sm" style="margin-bottom:10px;">'+ result.result.list.data[i].obs +'</div>'+
                    '</div>'+
                    '<div class="col-sm col-md-4 themed-grid-col">'+
                        '<div class="col-sm" style="text-align:right;"><i class="fa fa-chevron-right"></i></div>'+
                    '</div>'+
                '</div>'+
            '</button>');
        }
    });
});