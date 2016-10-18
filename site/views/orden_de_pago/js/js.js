$(document).ready(function(){




//------------------------CAMBIO PROVEEDOR------------------------------------------------------------------------------------------------

$(document).on("keyup","#proveedor",function(){

var rif = this.value;
	
		$.get(base_url+"orden_de_pago/montar_selec_prov",{

			'rif' : rif

		},function(datos){
			if(datos._id != null){
				$("div.item:nth-child(2)").html(":"+datos._beneficiario);
				$("div.item:nth-child(4)").html(":"+datos._nombre);
				$("div.item:nth-child(6)").html(":"+datos._rif);
				$("div.item:nth-child(8)").html(":"+datos._contacto);
				$("div.item:nth-child(10)").html(":"+datos._direccion);
				$("div.item:nth-child(12)").html(":"+datos._tipo_credito);
				$("div.item:nth-child(14)").html(":"+datos._porcentaje_retencion+'%');
				$("div.item:nth-child(16)").html(":"+datos._tlf);

				
				var html="<option value='seleccione'>--seleccione--</option>";

				for (var i = 0 ; i < datos._factura.length ; i++) {
					
					html+="<option value='"+datos._factura[i]._id+"'>("+datos._factura[i]._id+")----("+datos._factura[i]._nro_control+")</option>";

				}

				$("#factura_select").html(html);


			}
			else{

					$("div.item:nth-child(2)").html(":");
				$("div.item:nth-child(4)").html(":");
				$("div.item:nth-child(6)").html(":");
				$("div.item:nth-child(8)").html(":");
				$("div.item:nth-child(10)").html(":");
				$("div.item:nth-child(12)").html(":");
				$("div.item:nth-child(14)").html(":");
				$("div.item:nth-child(16)").html(":");


				var html="<option value='seleccione'>--seleccione--</option>";

				$("#factura_select").html(html);



			}
		},'json');






});
/*$(document).on("change","#proveedor",function(){

var rif = this.value;
	
		$.get(base_url+"orden_de_pago/montar_selec_prov",{

			'rif' : rif

		},function(datos){
			if(datos._id != null){
				$("div.item:nth-child(2)").html(":"+datos._beneficiario);
				$("div.item:nth-child(4)").html(":"+datos._nombre);
				$("div.item:nth-child(6)").html(":"+datos._rif);
				$("div.item:nth-child(8)").html(":"+datos._contacto);
				$("div.item:nth-child(10)").html(":"+datos._direccion);
				$("div.item:nth-child(12)").html(":"+datos._tipo_credito);
				$("div.item:nth-child(14)").html(":"+datos._porcentaje_retencion+'%');
				$("div.item:nth-child(16)").html(":"+datos._tlf);

				
				var html="<option value='seleccione'>--seleccione--</option>";

				for (var i = 0 ; i < datos._factura.length ; i++) {
					
					html+="<option value='"+datos._factura[i]._id+"'>"+datos._factura[i]._nro_control+"</option>";

				}

				$("#factura_select").html(html);


			}
			else{

					$("div.item:nth-child(2)").html(":");
				$("div.item:nth-child(4)").html(":");
				$("div.item:nth-child(6)").html(":");
				$("div.item:nth-child(8)").html(":");
				$("div.item:nth-child(10)").html(":");
				$("div.item:nth-child(12)").html(":");
				$("div.item:nth-child(14)").html(":");
				$("div.item:nth-child(16)").html(":");


				var html="<option value='seleccione'>--seleccione--</option>";

				$("#factura_select").html(html);



			}
		},'json');






});*/
//------------------------------------------------------------------------------------------------------------------------

//------------------------CAMBIO FACTURA------------------------------------------------------------------------------------------------

$(document).on("change","#factura_select",function(){

var id = this.value;
	
		$.get(base_url+"orden_de_pago/montar_datos_factura",{

			'id' : id

		},function(datos){

		
				var dto;

			if(datos._factura._tipo_descuento==1){
				dto='%'
			}else{
				dto='Bs'
			}


		
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(1)").html(datos._factura._nro_control);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(2)").html(datos._factura._fecha_elavoracion);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(3)").html(datos._factura._fecha_recepcion);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(4)").html(datos._factura._fecha_vencimiento);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(1)").html(datos._factura._monto);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(2)").html(datos._factura._descuento+dto);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(3)").html(datos._factura._sub_total);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(4)").html(datos._factura._iva);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(5)").html(datos._factura._total);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(6)").html(datos._factura._retencion._retencion);
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(7)").html((datos._factura._total-datos._factura._retencion._retencion));
			$("#area_factura > table:nth-child(1) > tbody:nth-child(1) > tr:nth-child(4) > td:nth-child(8)").html(datos._factura._abono+"--"+datos._factura._saldo_pendiente);


			
		},'json');






});
//------------------------------------------------------------------------------------------------------------------------



$(document).on("click","#guardar_orden_de_pago",function(){


		if(!$('#form_orden_de_pago').validationEngine('validate')){/*validacion del formulario*/
						return;
					}

	
		$.get(base_url+"orden_de_pago/guardar_orden_de_pago",{
		
		 
		 'id_factura'   : $('#factura_select').val(),
		 'id_proveedor'   : $('#proveedor').val()

			

		},function(datos){

			
			//location.href='pdf/generar_orden/'+datos._id_factura+'/'+datos._id_proveedor+'/'+datos._id;
			location.href='pdf/completar_orden/'+datos._id;

		},'json');






});
//------------------------------------------------------------------------------------------------------------------------












});