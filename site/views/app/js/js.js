$(document).ready(function(){


$(document).on("change","#nav",function(){

$("#muestra_nav").css("background-color","#"+this.value);

});
$(document).on("change","#header",function(){

$("#muestra_header").css("background-color","#"+this.value);

});
$(document).on("change","#header-letra-border",function(){

$("#muestra_header").css("color","#"+this.value);
$("#muestra_header").css("border-color","#"+this.value);

});
$(document).on("change","#titulos",function(){

$("#muestra_titulos").css("background-color","#"+this.value);

});

$(document).on("change","#titulo-letra-border",function(){

$("#muestra_titulos").css("color","#"+this.value);
$("#muestra_titulos").css("border-color","#"+this.value);

});
$(document).on("change","#piee",function(){

$("#muestra_pie").css("background-color","#"+this.value);

});
$(document).on("change","#pie-letra-border",function(){

$("#muestra_pie").css("color","#"+this.value);
$("#muestra_pie").css("border-color","#"+this.value);

});
$(document).on("change","#fondo",function(){

$("#color_aplicacion").css("background-color","#"+this.value);

});
$(document).on("change","#ancho_header",function(){

$(".header-content").css("min-height",this.value+"px");

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





$(document).on("click","#cambiar_color",function(){


$.get(base_url+"app/estilos",{

'nav'                  : $('#nav').val(),
'letra_nav'            : $('#letra_nav').val(),
'letra_nav_principal'  : $('#letra_nav_principal').val(),
'letra_nav_hover'      : $('#letra_nav_hover').val(),
'header'               : $('#header').val(),
'header-letra-border'  : $('#header-letra-border').val(),
'titulos'              : $('#titulos').val(),
'titulo-letra-border'  : $('#titulo-letra-border').val(),
'pie'                  : $('#piee').val(),
'pie-letra-border'     : $('#pie-letra-border').val(),
'fondo'                : $('#fondo').val(),
'ancho_header'              : $('#ancho_header').val()
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
			html+="<th>Estatus</th>";
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
			html+="<td>" + datos[i].estatus + "</td>";
			html+="<td><a id='eliminar_chicas' data-toggle='tooltip' data-placement='bottom' title='Eliminar Chica' data-id_chica='"+datos[i].id_chicas+"'><span class='glyphicon glyphicon-trash'></span></a>  <a data-toggle='modal' data-target='#modalpago' title='Habilitar/Desabilitar' data-id_chica='"+datos[i].id_chicas+"'><span class='glyphicon glyphicon-usd'></span></a></td>";
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

$(document).on("click", "habilitar", function(){
	id_chica=$(this).data("id_chica");
	$.post(base_url + 'app/habilitar_chicas',{
		id_chica: id_chica
			},function(datos){
			alert("chica eliminada");
			mostrar_chicas($("#buscar_chicas").val());			
	           },"json");
});

});