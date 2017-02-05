$(document).ready(function(){


auto_conpletado();
var agencias=new Array();

function auto_conpletado(){

	$.post(base_url+'agencia/auto_completado', {}, function(data) {
		for (var i = 0; i < data.length ;  i++) {
			agencias[i]=data[i]['nombre_agencia'];
		}
		
		
	},"json");


}




  $( function() {
    $( "#agencia_name" ).autocomplete({
      source: agencias
    });
  } );




$(document).on("click", "#btn_buscar", function(){
	location.href=base_url+"agencia/?bn="+$("#bn").val()+"&agencia_name="+$("#agencia_name").val();
});






$(document).on("click", ".agencias-banner-listado", function(){
	//alert(base_url+"agencia/indicidual/?id_agencia="+this.dataset.id);
	location.href=base_url+"agencia/individual/?id_agencia="+this.dataset.id;
});




});

