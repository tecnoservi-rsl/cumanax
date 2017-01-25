$(document).ready(function(){
$('#fotoG').hide();

$(document).on("click", "#ver_niña", function(){
	$('#perfil').hide(500);
	$('#fotoG').hide(500);
	id_foto=$(this).data("url");
	$('#fotoG').attr('src', id_foto);
	$('#fotoG').show(500);
})

$(document).on("click", "#ver_perfil", function(){
	$('#fotoG').hide(500);
	$('#perfil').show(500);
	
})















});