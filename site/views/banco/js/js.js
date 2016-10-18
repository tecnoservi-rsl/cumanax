$(document).ready(function(){

	
if ($('#_ROL_').val()=='3' || $('#_ROL_').val()=='5') {

$("#agregar_chek").remove();
$(".glyphicon-pencil").remove();
$(".glyphicon-trash").remove()

}


if ($("#accion").val()=="detallar"){


		$("#tipo_cta").attr('disabled','disabled');
		$("#direccion").attr('disabled','disabled');
		$("#nombre").attr('disabled','disabled');
		$("#saldo").attr('disabled','disabled');
		$("#moneda").attr('disabled','disabled');
		

		$("#detallar").addClass('hidden');
		$("#form_banco > ul:nth-child(3) > li:nth-child(1) > span:nth-child(2)").addClass('hidden');






}






				/*funcion en el evento on click del boton guardar---- guarda los datos del proveedor*/
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#guardar",function(){


				
				if(!$('#form_banco').validationEngine('validate')){/*validacion del formulario*/
						return;
					}
					$.get(base_url+"banco/guardar",{/*funcion get al server*/
					'nombre'			  :$("#nombre").val(),
					'tipo_cta'         :$("#tipo_cta").val(),
					'nro_cta'         :$("#nro_cta").val(),
					'direccion'           :$("#direccion").val(),
					'saldo'               :$("#saldo").val(),
					'moneda'              :$("#moneda").val()
					
					},function(mensaje){
					if (mensaje){
					alertify.success('!!!registro guardado con exito¡¡¡');
					}else{
					alertify.error('hubo un herror, no se registraron los datos');
					}

					$("#nombre").val('');
					$("#tipo_cta").val('');
					$("#direccion").val('');
					$("#saldo").val('');
					$("#moneda").val('');
					$("#nro_cta").val('');


					});

				});
				/*--------------------------------------------------------------------------------------------------------*/

				/*funcion en el evento on click del boton guardar---- guarda los datos del proveedor*/
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#editar",function(){


				
				if(!$('#form_banco').validationEngine('validate')){/*validacion del formulario*/
						return;
					}
					$.get(base_url+"banco/editar",{/*funcion get al server*/
					'id'			      :$("#id").val(),
					'nombre'			  :$("#nombre").val(),
					'tipo_cta'           :$("#tipo_cta").val(),
					'nro_cta'         :$("#nro_cta").val(),
					'direccion'           :$("#direccion").val(),
					'saldo'               :$("#saldo").val(),
					'moneda'              :$("#moneda").val()
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
			$(document).on("click","#eliminar_chequera",function(){

					var id=this.dataset.id;

					alertify.confirm("¿Estas seguro que desea eliminar este registro?", function (e) {
					if (e) {	
										$.get(base_url+"banco/eliminar_chequera",{/*funcion get al server*/
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

				$(document).on("click","#editar_chequera",function(){




					var id=this.dataset.id;
			
					$.get(base_url+"banco/dato_chequera",{/*funcion get al server*/
					'id'			      :id
					
					},function(datos){
					
						

						$("#ventana_capa").removeClass("hidden");
						$("#chek_codigo").val(datos.codigo);
						$("#chek_desde").val(datos.desde);
						$("#chek_hasta").val(datos.hasta);
						$("#chek_accion").val(id);
					

					},'json');

				});
				/*--------------------------------------------------------------------------------------------------------*/
			
				$(document).on("click","#_cheque_cerrar",function(){

					$("#ventana_capa").addClass("hidden");

				});

				/*--------------------------------------------------------------------------------------------------------*/

				$(document).on("click","#chek_guardar",function(){


					if(!$('#form_chequera').validationEngine('validate')){/*validacion del formulario*/
						return;
					}

					if ($("#chek_accion").val() != "nuevo") {


					$.get(base_url+"banco/editar_chek",{/*funcion get al server*/
					'id'			      :$("#chek_accion").val(),
					'codigo'			  :$("#chek_codigo").val(),
					'desde'			      :$("#chek_desde").val(),
					'hasta'			      :$("#chek_hasta").val()
				



					
					},function(){location.reload('true');});

				}else{


					$.get(base_url+"banco/guardar_cheke",{/*funcion get al server*/
					
					'id'			      :$("#id").val(),
					'codigo'			  :$("#chek_codigo").val(),
					'desde'			      :$("#chek_desde").val(),
					'hasta'			      :$("#chek_hasta").val()
				



					
					},function(){location.reload('true');});





				}


				});
				/*--------------------------------------------------------------------------------------------------------*/
			
				/*--------------------------------------------------------------------------------------------------------*/

				$(document).on("click","#agregar_cheke_area",function(){


					$("#ventana_capa").removeClass("hidden");
						$("#chek_codigo").val("");
						$("#chek_desde").val("");
						$("#chek_hasta").val("");
						$("#chek_accion").val("nuevo");
			
					

				});
				/*--------------------------------------------------------------------------------------------------------*/
			
						/*funcion en el evento on click para cancelar cheque----
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#cancelar_cheque",function(){


				var id=this.dataset.id;

				$.get(base_url+"banco/actualisar_estado_cheque",{'id':id},function(){

				//location.reload('true');

				});

				
				

				});
				/*--------------------------------------------------------------------------------------------------------*/





});