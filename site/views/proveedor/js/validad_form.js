$(document).ready(function(){



$('#beneficiario').addClass('validate[required]');
$('#nombre').addClass('validate[required]');
$('#rif').addClass('validate[required]');
$('#contacto').addClass('validate[required]');
$('#direccion').addClass('validate[required]');
$('#tipo_credito').addClass('validate[required]');
$('#porcentaje_retencion').addClass('validate[required]');
$('#tlf').addClass('validate[required]');



$("#factura_accion").addClass('validate[required]');
//$("#factura_nro_control").addClass('validate[required]');
//$("#factura_descuento").addClass('validate[required]');
$("#factura_impuesto").addClass('validate[required]');
$("#factura_fecha_ela").addClass('validate[required]');
$("#factura_fecha_rec").addClass('validate[required]');
$("#factura_tipo").addClass('validate[required]');
$("#factura_total").addClass('validate[required]');
$("#factura_subtotal").addClass('validate[required]');

$("#factura_nro_factura").addClass('validate[required]');

$("#factura_monto").addClass('validate[required]');





$('#form_proveedor').validationEngine();
$('#form_factura').validationEngine();
//$('#form_proveedor').validationEngine('validate');
				
			

});