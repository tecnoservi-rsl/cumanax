$(document).ready(function(){

	var accion=0;

$( "#fecha_activo" ).datepicker({
  dateFormat: 'yy-mm-dd'
});

$(document).on("change","#permisos_ch",function(){

console.log("menu--"+this.dataset.menu);
console.log("rol--"+this.dataset.rol);
console.log(this.checked);


$.get(base_url+"app/permisos_ch",{

'menu'        : this.dataset.menu,
'rol'         : this.dataset.rol,
'estado'      : this.checked

});



});






function mostrar_chicas(nombre_chica){
	$.post(base_url + 'app/buscar_chicas',{
		nombre_chica: nombre_chica
			},function(datos){
			console.log(datos);
			var html=" <br><div class='panel panel-default'>";
			html+="<div class='panel-heading'>";
			html+=" <h3 class='panel-title'><center><b>RESULTADO - CHICAS</b></center></h3>";
			html+="</div>";
			html+="<div class='panel-body'>";
			html+="<div class='table-responsive'>";
			
			html+="<table class='table table-striped table-hover '><thead>";
			html+="<tr class='default'>";
			html+="<th>Nombre</th>";
			html+="<th>Telefono</th>";
			html+="<th>Fecha ultimo pago</th>";
			html+="<th>Fecha de vencimiento</th>";
			html+="<th>Acciones</th>";
			html+="</tr>";
			html+="</thead>";
			html+="<tbody>";
		if(datos==""){
			
			html+="<tr><td colspan='5'> <b><center>No Se Encontraron Chicas</center></b></td></tr>";
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
			exit();
			}	
			for(var i = 0; i < datos.length; i++)
			{	
			html+="<tr><td>" + datos[i].nombre_chicas + "</td>";
			html+="<td>" + datos[i].tlf + "</td>";
			html+="<td>" + datos[i].fecha_pago + "</td>";
			html+="<td>" + datos[i].fecha_vencimiento + "</td>";
			html+="<td><a id='eliminar_chicas' data-toggle='tooltip' data-placement='bottom' title='Eliminar Chica' data-id_chica='"+datos[i].id_chicas+"'><span class='glyphicon glyphicon-trash'></span></a>";
			html+="<a data-toggle='modal' id='id_pago' data-target='#modalpago' title='Habilitar/Desabilitar' data-id_chica='"+datos[i].id_chicas+"'><span class='glyphicon glyphicon-usd'></span></a></td>";
			}
			
			html+="</tbody> </table> </div> </div> </div>";
			$("#div_contenedor2").html("");
			$("#div_contenedor2").html(html);
				
	           },"json");
};

$(document).on("keyup", "#buscar_chicas", function(){
	nombre_chica=$("#buscar_chicas").val();
	mostrar_chicas(nombre_chica);

});

$(document).on("click", "#id_pago", function(){
	id_chica=$(this).data("id_chica");
	$("#id_chica_pago").val(id_chica);

});

$(document).on("click", "#eliminar_chicas", function(){
id_chica=$(this).data("id_chica");
console.log(id_chica);
decision=confirm("Desea realmente eliminarlo");
if(decision==false){
	exit();
}

$.post(base_url + 'app/eliminar_chicas',{
		id_chica: id_chica
			},function(datos){
			alert("chica eliminada");
			mostrar_chicas($("#buscar_chicas").val());			
	           },"json");

});

$(document).on("click", "#pago", function(){
	
	id_chica=$("#id_chica_pago").val();
	console.log(id_chica);
	meses=$("#meses").val();
	$.post(base_url + 'app/pago_chicas',{
		id_chica: id_chica,
		meses: meses
			},function(datos){
			alert("Pago Realizado");
			mostrar_chicas($("#buscar_chicas").val());			
	           },"json");
});

$(document).on("click", "#btn_actv", function(){
	
		$.post(base_url + 'app/updonw',
			{

			fecha: $("#fecha_activo").val(),
			accion: accion
			
			},function(){
				document.location=base_url+"app";		
	           });


});

$(document).on("click", "#radio1", function(){
	
if (this.value=="activar") {

accion="1";
$("#fecha_activo").attr('disabled', 'true');
}
else{

accion="0";
$("#fecha_activo").removeAttr("disabled")

}


});


});