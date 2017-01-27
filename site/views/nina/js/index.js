$(document).ready(function(){


$(document).on("click", "#prevista > img", function(){
	id=this.id;
	id_foto=$("#"+id).attr('src');
	var options = {};
	$( "#fotoG" ).hide( "fade", options, 1000, callback(id_foto));
	
	
})


    function callback(e) {
      setTimeout(function() {
      	$('#fotoG').attr('src', e);
        $( "#fotoG" ).removeAttr( "style" ).hide().fadeIn();
      }, 1000 );
    };














});