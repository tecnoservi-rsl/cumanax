$(document).ready(function(){



$('#tipo_cta').addClass('validate[required]');
$('#nombre').addClass('validate[required]');
$('#direccion').addClass('validate[required]');
$('#saldo').addClass('validate[required]');
$('#moneda').addClass('validate[required]');

$('#chek_codigo').addClass('validate[required]');
$('#chek_desde').addClass('validate[required]');
$('#chek_hasta').addClass('validate[required]');








$('#form_chequera').validationEngine();
$('#form_banco').validationEngine();
//$('#form_proveedor').validationEngine('validate');
				
			

});