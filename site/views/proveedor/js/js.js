$(document).ready(function(){

	if ($('#_ROL_').val()=='5') {

$("#agregar_factura_area").remove();
$(".glyphicon-pencil").remove();
$(".glyphicon-trash").remove()

}


$( "#factura_fecha_ela" ).datepicker();
$( "#factura_fecha_ela" ).datepicker( "option", "dateFormat", 'yy/mm/dd' );
$( "#factura_fecha_rec" ).datepicker();
$( "#factura_fecha_rec" ).datepicker( "option", "dateFormat", 'yy/mm/dd' );
$( "#factura_fecha_rec" ).datepicker({

	dateFormat:'yy/mm/dd',
	firstDay:1


});


$("#factura_impuesto").val("12");

if ($("#accion").val()=="detallar"){


		$("#beneficiario").attr('disabled','disabled');
		$("#nombre").attr('disabled','disabled');
		$("#rif").attr('disabled','disabled');
		$("#contacto").attr('disabled','disabled');
		$("#direccion").attr('disabled','disabled');
		$("#tipo_credito").attr('disabled','disabled');
		$("#porcentaje_retencion").attr('disabled','disabled');
		$("#tlf").attr('disabled','disabled');
		$("#detallar").addClass('hidden');
		$("#form_proveedor > ul:nth-child(3) > li:nth-child(1) > span:nth-child(2)").addClass('hidden');






}
if ($("#accion").val()=="editar"){

$("#porcentaje_retencion").attr('disabled','disabled');



}






				/*funcion en el evento on click del boton guardar---- guarda los datos del proveedor*/
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#guardar",function(){


				
				if(!$('#form_proveedor').validationEngine('validate')){/*validacion del formulario*/
						return;
					}
					$.get(base_url+"proveedor/guardar",{/*funcion get al server*/
					'beneficiario'			  :$("#beneficiario").val(),
					'nombre'                  :$("#nombre").val(),
					'rif'                     :$("#rif").val(),
					'contacto'                :$("#contacto").val(),
					'direccion'               :$("#direccion").val(),
					'tipo_credito'            :$("#tipo_credito").val(),
					'porcentaje_retencion'    :$("#porcentaje_retencion").val(),
					'tlf'                     :$("#tlf").val()
					},function(mensaje){
					if (mensaje){
					alertify.success('!!!registro guardado con exito¡¡¡');
					}else{
					alertify.error('hubo un herror, no se registraron los datos');
					}

					$("#beneficiario").val('');
					$("#nombre").val('');
					$("#rif").val('');
					$("#contacto").val('');
					$("#direccion").val('');
					$("#tipo_credito").val('');
					$("#porcentaje_retencion").val('');
					$("#tlf").val('');


					});

				});
				/*--------------------------------------------------------------------------------------------------------*/

				/*funcion en el evento on click del boton guardar---- guarda los datos del proveedor*/
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#editar",function(){


				
				if(!$('#form_proveedor').validationEngine('validate')){/*validacion del formulario*/
						return;
					}
					$.get(base_url+"proveedor/editar",{/*funcion get al server*/
					'id'			          :$("#id").val(),
					'beneficiario'			  :$("#beneficiario").val(),
					'nombre'                  :$("#nombre").val(),
					'rif'                     :$("#rif").val(),
					'contacto'                :$("#contacto").val(),
					'direccion'               :$("#direccion").val(),
					'tipo_credito'            :$("#tipo_credito").val(),
					'porcentaje_retencion'    :$("#porcentaje_retencion").val(),
					'tlf'                     :$("#tlf").val()
					},function(mensaje){
					if (mensaje){
					alertify.success('!!!registro editado con exito¡¡¡');
					}else{
					alertify.error('hubo un herror, no se editaron los datos');
					}

					window.history.back();

					});

				});
				/*--------------------------------------------------------------------------------------------------------*/

			
$(document).on("click","#agregar_factura_area",function(){


						$("#ventana_capa").removeClass("hidden");
						$("#factura_accion").val("");
						$("#factura_nro_control").val("");
						$("#factura_descuento").val("");
						$("#factura_impuesto").val("");
						$("#factura_fecha_ela").val("");
						$("#factura_fecha_rec").val("");
						$("#factura_tipo").val("");
						$("#factura_total").val("");
						$("#factura_subtotal").val("");
						$("#factura_monto").val("");
						$("#factura_iva").val("");
						$("#factura_cantidad").val("");
						$("#factura_accion").val("nuevo");
			
					

				});

$(document).on("click","#_factura_cerrar",function(){

					$("#ventana_capa").addClass("hidden");

				});



/*--------------------------------------------------------------------------------------------------------*/

				$(document).on("click","#editar_factura",function(){


					var id=this.dataset.id;
			
					$.get(base_url+"proveedor/dato_factura",{/*funcion get al server*/
					'id'			      :id
					
					},function(datos){
					
						

						$("#ventana_capa").removeClass("hidden");

						$("#factura_accion").val(datos.id);
						$("#factura_nro_control").val(datos.nro_control);
						$("#factura_nro_factura").val(datos.nro_factura);
						$("#factura_descuento").val(datos.descuento);
						$("#factura_impuesto").val(datos.impuesto);
						$("#factura_fecha_ela").val(datos.fecha_elavoracion);
						$("#factura_fecha_rec").val(datos.fecha_recepcion);
						$("#factura_tipo").val(datos.tipo);
						$("#factura_cantidad").val(datos.monto);
						$("#chek_accion").val(id);

						if(datos.tipo_descuento==1){

							$("input:radio[value='1']").attr('checked',true);
						}
						else{
							$("input:radio[value='2']").attr('checked',true);
						}

						
						recalcular();
					calcular();



					

					},'json');

				});
				/*--------------------------------------------------------------------------------------------------------*/

				$(document).on("click","#factura_guardar",function(){


					if(!$('#form_factura').validationEngine('validate')){/*validacion del formulario*/
						return;
					}

					if ($("#factura_accion").val() != "nuevo") {


					$.get(base_url+"proveedor/editar_factura",{/*funcion get al server*/

					'id_prov'			  :$("#id").val(),
					'id'			     :$("#factura_accion").val(),
					'nro_control'        : $("#factura_nro_control").val(),
					'nro_factura'        : $("#factura_nro_factura").val(),
					'descuento'          : $("#factura_descuento").val(),
					'tipo_descuento'     : $("input:radio[name=factura_tipo_descuento]:checked").val(),
					'impuesto'           : $("#factura_impuesto").val(),
					'fecha_elavoracion'  : $("#factura_fecha_ela").val(),
					'fecha_recepcion'    : $("#factura_fecha_rec").val(),
					'tipo'               : $("#factura_tipo").val(),
					'total'              : $("#factura_total").val(),
					'sub_total'          : $("#factura_subtotal").val(),
					'monto'              : $("#factura_cantidad").val()
				



					
					},function(){
						location.reload('true');
				});

				}else{


					


					$.get(base_url+"proveedor/guardar_factura",{/*funcion get al server*/
					
					'id'			      :$("#id").val(),
					'nro_control'        : $("#factura_nro_control").val(),
					'nro_factura'        : $("#factura_nro_factura").val(),
					'descuento'          : $("#factura_descuento").val(),
					'tipo_descuento'     : $("input:radio[name=factura_tipo_descuento]:checked").val(),
					'impuesto'           : $("#factura_impuesto").val(),
					'fecha_elavoracion'  : $("#factura_fecha_ela").val(),
					'fecha_recepcion'    : $("#factura_fecha_rec").val(),
					'tipo'               : $("#factura_tipo").val(),
					'total'              : $("#factura_total").val(),
					'sub_total'          : $("#factura_subtotal").val(),
					'monto'              : $("#factura_cantidad").val()
				



					
					},function(){
						location.reload('true');
				});



					









				}


				});
				/*--------------------------------------------------------------------------------------------------------*/

				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#eliminar_factura",function(){


					var id=this.dataset.id;

					alertify.confirm("¿Estas seguro que desea eliminar este registro?", function (e) {
			if (e) {	

				$.get(base_url+"proveedor/eliminar_factura",{/*funcion get al server*/
					'id'			      :id
					},function(){
					location.reload('true');
					});



			
			} else {
				alertify.error("ha cancelado la eliminacion");
			}
			});





			
					
				});
				/*--------------------------------------------------------------------------------------------------------*/


			
				$(document).on("change","#factura_impuesto",function(){
					console.log("entro");
					var impuesto=$("#factura_impuesto").val();
					$("#label_impuesto").html("impuesto "+ impuesto +"%");
				});


				$(document).on("change","#factura_impuesto",function(){

					calcular();


				});
				$(document).on("change","#factura_cantidad",function(){

					
					calcular();

				});
				$(document).on("change","#factura_descuento",function(){

					
					recalcular();
					calcular();

				});
				$(document).on("click","input:radio",function(){

					
					recalcular();
					calcular();

				});

					function calcular(){



					var impuesto=$("#factura_impuesto").val();
					var cantidad=$("#factura_cantidad").val();
					var des=descuento_chequeo();
					
					cantidad=( parseFloat(cantidad)-parseFloat(des));
					$("#factura_subtotal").val(cantidad.toFixed(2));
					iva=(parseFloat(cantidad/100)*impuesto);
					$("#factura_iva").val(iva.toFixed(2));
					total=parseFloat(cantidad)+parseFloat(iva);
					$("#factura_total").val(total.toFixed(2));

					console.log(cantidad);
					console.log(iva);
					console.log(total);
				
					



					}


						function descuento_chequeo(){

							var valor=$("input:radio[name=factura_tipo_descuento]:checked").val();

							var cantidad=$("#factura_cantidad").val();

							var descuento_xx=$("#factura_descuento").val();
							if(descuento_xx==""){descuento_xx=0;}
							if (valor=='1') {
									
								if(descuento_xx==0 || descuento_xx=='0'){
									
									return 0;
								}

								var Rs=(parseFloat(cantidad)/100)*parseFloat(descuento_xx);
								return Rs;

							} else {


								return descuento_xx;


							}

							

							

						}


						function recalcular(){


					var valor=$("input:radio[name=factura_tipo_descuento]:checked").val();
					var cantidad=$("#factura_cantidad").val();
					var descuento_xx=$("#factura_descuento").val();

					if(valor=="1"){

						if(descuento_xx>=100){
							$('#factura_descuento').val(100);
							calcular();
						}
						if (descuento_xx<=0) {
							$('#factura_descuento').val(0);
							calcular();
						}
					}else {

						if(parseFloat(descuento_xx) >= parseFloat(cantidad)){
							$('#factura_descuento').val(cantidad);
							calcular();
						}
						if (descuento_xx < 0) {
							$('#factura_descuento').val(0);
							calcular();
						}



					}


						}



				$(document).on("change","#factura_nro_factura",function(){


					var valor=this.value;

					$.get(base_url+"proveedor/buscar_nro_factura",{
					
					'valor': valor 
					
					},function(){


						
					});


				});







});