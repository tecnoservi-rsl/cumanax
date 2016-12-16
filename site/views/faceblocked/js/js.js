
$(document).on("click","#verificar",function(){


var cedula=$('#cedula').val();

alert(cedula);


});

$(document).on("click","#comprovar",function(){

$(".mensaje-al-usuario").addClass('mensaje-al-usuario2');
$(".validar-al-usuario").addClass('validar-al-usuario2');

});
$(document).on("click","#comprovar_atras",function(){

$(".mensaje-al-usuario").removeClass('mensaje-al-usuario2');
$(".validar-al-usuario").removeClass('validar-al-usuario2');

});







/*
		$.get(base_url+'principal/traer_datos_ci',{

		'ci':20574205

		},function(data) {
			
			console.log(data);

		});*/
