$(document).ready(function(){



				var obj_banco;
				var orden_de_pago;
				var abonooo=0;



					//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------validar cantidades a pagarrr---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on('change','#cantidad_a_pagar',function(){ verificar_pagar(this) });


				function verificar_pagar(camp){
					
					
					var campo=camp;
					var acum_descuentos=0;



					for (var i = 0; i < orden_de_pago._factura._descuentos.length; i++) {
									
									acum_descuentos+= orden_de_pago._factura._descuentos[i]._cantidad; 
									
							}


					if(campo.value > ((orden_de_pago._factura._total_a_pagar-acum_descuentos)-abonooo)){
					campo.value=(orden_de_pago._factura._total_a_pagar-acum_descuentos)-abonooo;
					//campo.focus();
					console.log("campo  > deuda");
					}
					if(parseFloat(campo.value) > parseFloat(obj_banco._saldo)){
					campo.value=obj_banco._saldo;
					//campo.focus();
					console.log(obj_banco);
					}
				}


			//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//------------------------canbio de banco------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				$(document).on("change","#banco",function()
				{

						var id = this.value;

						if (id=="no") {
							$("#cantidad_a_pagar").attr("disabled",true);
							$("#tipo_pago").attr("disabled",true);
							$("#tipo_pago > option:nth-child(1)")[0].selected=true;
							$("#cantidad_a_pagar").val("");
							return;
						}

							$.get(base_url+"orden_de_pago/datosbanco",{'id' : id},
							function(datos){
									obj_banco=datos;
									
									$("#cantidad_a_pagar").val("");
									$("#cantidad_a_pagar").removeAttr("disabled");
									$("#tipo_pago").removeAttr("disabled");
									$("#tipo_pago > option:nth-child(1)")[0].selected=true;
									


							},'json');
				});
				//-------------------------------------------------------------------------------------------------------------------------------------------------------------
				//--------------------guardar orden de pago-------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				$(document).on("click","#completar_orden_de_pago",function(){
					
					if(!$('#form_orden_de_pago').validationEngine('validate')){/*validacion del formulario*/
					return;
					}
					$.get(base_url+"orden_de_pago/guardar",{
						'id_banco'     : $('#').val(),
						'id_factura'   : $('#').val(),
						'id_proveedor' : $('#').val(),
						'tipo_pago'    : $('#').val(),
					});
				});
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------modal con datos de orden de pago ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				$(document).on("click","#pagar",function(){
					var id= this.dataset.id;
					$("#orden_de_pago").removeClass('hidden');
					$("#mainNav").removeClass('navbar-fixed-top');
					$("#cantidad_a_pagar").attr("disabled",true);
					$("#cantidad_a_pagar").val("");
					$("#tipo_pago").attr("disabled",true);
					$("#tipo_pago > option:nth-child(1)")[0].selected=true;
					$("#banco > option:nth-child(1)")[0].selected=true;

					actualizar(id);
				});
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------cerrar modal con datos de orden de pago ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				$(document).on("click","#cerrar",function(){
					$("#orden_de_pago").addClass('hidden');
					$("#mainNav").addClass('navbar-fixed-top');
				});
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------cerrar modal descuentos ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on("click","#cerrar_descuento_modal",function(){
					$("#fondo_descuento").addClass('hidden');
				});
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------modal  descuento---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on("click","#descuento_modal",function(){
				$("#fondo_descuento").removeClass('hidden');});

				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------guardar descuentos ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on("click","#guardar_descuentos",function(){


						$.get(base_url+"orden_de_pago/guardar_descuentos",{
							'prontop' : $("#des_pron_pago").val(),
							'pardana' : $("#des_par_da").val(),
							'parfalt' : $("#des_par_fal").val(),
							'datos'   : orden_de_pago
						},function(){
						$("#fondo_descuento").addClass('hidden');
						actualizar(orden_de_pago._id);
						});
				});


				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------funcion actualizar datos del modal orden de pago ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				function actualizar(id){

						$.get(base_url+"orden_de_pago/datos_orden",{'id' : id},function(datos){
							orden_de_pago=datos;	
							var acum_descuentos=0;
							var html_orpa="<div class='header-titulos'>datos de la orden de pago</div>";
							html_orpa+="<b>Nro : </b>"+datos._id+"<b>  fecha de emicion :</b> "+datos._fecha_emicion+"</br>";
							
							html_orpa+="<b>DESCUENTOS</b></br>";



							for (var i = 0; i < datos._factura._descuentos.length; i++) {
									html_orpa+=datos._factura._descuentos[i]._tipo +" : "+datos._factura._descuentos[i]._cantidad+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
									acum_descuentos+= datos._factura._descuentos[i]._cantidad; 
							}


							html_orpa+="<b></br>TOTAL DESCUENTO</b> "+acum_descuentos+" </br>";

							html_orpa+="<b>ABONOS</b></br>";

							abonooo=0;

							for (var i = 0; i < datos.abonos.length; i++) {

								
								 trans=parseFloat(datos.abonos[i]._transferencia._cantidad);
								 che=parseFloat(datos.abonos[i]._cheque._cantidad);

								if (isNaN(trans)) {
									trans=0;
								}
								if (isNaN(che)) {
									che=0;
								}
								abonoo=parseFloat(trans+che);

									html_orpa+=  "nro de orden :" +datos.abonos[i]._id +"  --- cantidad  : "+ abonoo +"</br>";
								abonooo+=parseFloat(abonoo);
									
							}





							html_orpa+="<b>TOTAL A CANCELAR </b>"+(  datos._factura._total_a_pagar-acum_descuentos-abonooo)+" </br>";
							orden_de_pago.total_cancelar_final=datos._factura._total_a_pagar-acum_descuentos-abonooo;
							$("#datos_orden_de_pago").html(html_orpa);



							if (datos._factura._tipo_descuento=='1') {
								var tipo_descuento="%";
							} else {
								var tipo_descuento="Bs";
							}

							var html_fac="<div class='header-titulos'>datos de la factura <div id='descuento_modal'>aplicar descuentos</div></div>";
							html_fac+="<div class='camp3'>tipo:"+datos._factura._tipo+"</div><div class='camp3'>Nro:"+datos._factura._id+"</div>";
							html_fac+="<div class='camp3'>vencimiento:"+datos._factura._fecha_vencimiento+"</div>";


							html_fac+="<div class='camp1'>cantidad</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._monto+"</div><div class='tm'>Bs</div></div>";
							html_fac+="<div class='camp1'>descuento</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._descuento+"</div><div class='tm'>"+tipo_descuento+"</div></div>";
							html_fac+="<div class='camp1'>sub total</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._sub_total+"</div><div class='tm'>Bs</div></div>";
							html_fac+="<div class='camp1'>iva</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._iva+"</div><div class='tm'>Bs</div></div>";
							html_fac+="<div class='camp1'>retencion</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._retencion._retencion+"</div><div class='tm'>Bs</div></div>";
							html_fac+="<div class='camp1'>total</div>    <div class='camp2'><div class='dos_puntos'>:</div><div class='cantdades'>"+datos._factura._total_a_pagar+"</div><div class='tm'>Bs</div></div>";

							$("#datos_factura").html(html_fac);
							$("#saldo_pendiente").val(datos._factura._total_a_pagar-acum_descuentos);
							verificar_pagar($('#cantidad_a_pagar')[0]);

						},'json');
				}


				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------validar cantidades descuentos---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on('change','#cont_descu input',function(){ verificar_cantidades(this) });


				function verificar_cantidades(camp){
					
					var acum_descuentos=0;
					var campo=camp;
					var cant1=$("#des_pron_pago").val();
					var cant2=$("#des_par_da").val();
					var cant3=$("#des_par_fal").val();
					var catidad_descuentos = (parseFloat(cant1) + parseFloat(cant2)) + parseFloat(cant3);
					for (var i = 0; i < orden_de_pago._factura._descuentos.length; i++) {
									
									acum_descuentos+= orden_de_pago._factura._descuentos[i]._cantidad; 
							}
					if(catidad_descuentos > ((orden_de_pago._factura._total_a_pagar)-abonooo)    ){
					campo.value=0;
					campo.focus();
					}
				}

			



			
			//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------cerrar modal banco ---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on("click","#cerrar_bancos_modal",function(){
					$("#fondo_banco").addClass('hidden');
					$('#guardar_orden_de_pago')[0].disabled=true;
					$("#tipo_pago > option:nth-child(1)")[0].selected=true


				});
				//------------------------------------------------------------------------------------------------------------------------------------------------------------
				//---------------------modal  tipo de transaccion---------------------------------------------------------------------------------------------------
				//------------------------------------------------------------------------------------------------------------------------------------------------------------

				$(document).on("change","#tipo_pago",function(){

		
					$("#fondo_banco").removeClass('hidden');
					console.log(obj_banco._chequera.length);
					var accion=this.value;
					var html='';
					var chequeras_activas=0;


					if(accion=="transferencia"){

									html="<li class='conpleto'><div id='titulo_descuentos'>datos de la transferencia</div></li>";
									html+="<li class='conpleto'>";
									html+='<label class="veinticinto">nro de referencia</label> ';
									html+='<input class="setentaycinco" type="text" id="trans_nro_de_referencia">';
									html+="</li>";
									html+="<li class='conpleto'>";
									html+='<label class="veinticinto">descripcion</label> ';
									html+='<textarea class="setentaycinco"  value="" id="trans_descripcion"></textarea>';
									html+="</li>";
								




								
							

					}else if(accion=="cheque"){
										html="<li class='conpleto'><div id='titulo_descuentos'>datos del cheque</div></li>";
										html+="<li class='conpleto'>";
									html+='<label class="veinticinto">codigo chequera</label> ';
									html+='<select class="setentaycinco" id="id_chequera">';
									html+='<option value="">--seleccione--</option>';
									for (var i = 0 ; i < obj_banco._chequera.length ; i++) {

										if(obj_banco._chequera[i]._estado=="activa"){
											chequeras_activas+=1;
									html+='<option value="'+obj_banco._chequera[i]._id+'">'+obj_banco._chequera[i]._id+"---"+obj_banco._chequera[i]._codigo+'</option>';
									}}
									html+="</select>"
									html+="</li>";
									if (chequeras_activas==0) {

									html+="<li class='conpleto'>";
									html+='<p class="no_hay">ups¡¡ .. disculpe pero para este banco no tiene chequeras activas para generar un cheque</p>';

									html+="</li>";
									}
									html+="<li class='conpleto'>";
									html+='<label class="veinticinto">fecha de liberacion</label> ';
									html+='<input class="setentaycinco" type="text" value="" id="fecha_liberacion">';
									html+="</li>";
									html+="<li class='conpleto'>";
									html+='<label class="veinticinto">descripcion</label> ';
									html+='<textarea class="setentaycinco"  value="" id="cheque_descripcion"></textarea>';
									html+="</li>";
					}
					
					
					html+="<li class='libtn'>";
					html+='<button class="btn btn-success" id="cargar_datos_tipo_pago" type="button" disabled="disabled" >guardar</button>';
					html+='<button class="btn btn-success" id="cerrar_bancos_modal" type="button">cerrar</button>';
					html+="</li>";
					
					
					$("#bancoss").html(html);
					$( "#fecha_liberacion" ).datepicker();
					$( "#fecha_liberacion" ).datepicker( "option", "dateFormat", 'yy/mm/dd' );


				});

$(document).on("change","#fecha_liberacion",function(){ activar_boton_modal_banco_cargar_datos_cheque()   });
$(document).on("change","#id_chequera",function(){ activar_boton_modal_banco_cargar_datos_cheque()   });
$(document).on("change","#cheque_descripcion",function(){ activar_boton_modal_banco_cargar_datos_cheque()   });

	function activar_boton_modal_banco_cargar_datos_cheque(){


		if($("#id_chequera").val()=="" || $("#fecha_liberacion").val()=="" || $("#cheque_descripcion").val()==""){

			$('#cargar_datos_tipo_pago')[0].disabled=true;
			}
			else{
				$('#cargar_datos_tipo_pago')[0].disabled=false;
			}


	}

	$(document).on("change","#trans_nro_de_referencia",function(){ activar_boton_modal_banco_cargar_datos_transferencia()   });
$(document).on("change","#trans_descripcion",function(){ activar_boton_modal_banco_cargar_datos_transferencia()   });

	function activar_boton_modal_banco_cargar_datos_transferencia(){


		if($("#trans_nro_de_referencia").val()=="" || $("#trans_descripcion").val()=="" ){

			$('#cargar_datos_tipo_pago')[0].disabled=true;
			}
			else{
				$('#cargar_datos_tipo_pago')[0].disabled=false;
			}


	}

	$(document).on("click","#cargar_datos_tipo_pago",function(){
					$("#fondo_banco").addClass('hidden');
				});

	$(document).on("change","#banco",function(){ activar_boton_modal_orden_final()   });
$(document).on("change","#cantidad_a_pagar",function(){ activar_boton_modal_orden_final()   });
$(document).on("change","#tipo_pago",function(){ activar_boton_modal_orden_final()   });


	function activar_boton_modal_orden_final(){


		if($("#banco").val()=="" || $("#cantidad_a_pagar").val()==""  || $("#tipo_pago").val()=="" ){

			$('#guardar_orden_de_pago')[0].disabled=true;
			}
			else{
				$('#guardar_orden_de_pago')[0].disabled=false;
			}


	}



$(document).on("click","#guardar_orden_de_pago",function(){


	orden_de_pago.banco=obj_banco;



	if($("#tipo_pago").val()=="cheque"){

		var pago={

			'tipo_pago'       : $("#tipo_pago").val(),
			'id_chequera'     : $("#id_chequera").val(),
			'descripcion'     : $('#cheque_descripcion').val(),
			'fecha_liberacion': $("#fecha_liberacion").val(),
			'cantidad'	  	  :$("#cantidad_a_pagar").val()

		}

	}else if($("#tipo_pago").val()=="transferencia"){

			var pago={

			'tipo_pago'       : $("#tipo_pago").val(),
			'descripcion'     : $("#trans_descripcion").val(),
			'nro_referencia'  :$("#trans_nro_de_referencia").val(),
			'cantidad'	  	  :$("#cantidad_a_pagar").val()

		}		

	} 


	

	console.log(pago);







$.post(base_url+"orden_de_pago/confirmar_orden",{



	
	'orden_de_pago' :orden_de_pago,
	'tipo_pago'     :$("#tipo_pago").val(),
	'pago'          :pago



},function(datos){




location.href='pdf/completar_orden/'+datos._id;



},'json');







});









});