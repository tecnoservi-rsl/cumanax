$(document).ready(function(){
id=1;

$(document).on("click", "#prevista > img", function(){
	id=this.id;
	id_foto=$("#"+id).attr('src');
	var options = {};
	$( "#fotoG" ).hide( "fade", options, 1000, callback(id_foto));
	
	
})

$(document).on("click", "#mover", function(){
	mover=$(this).data('mover');
	console.log(id);
	if(mover=='derecha'){
			id=id+1;
			if(id>6){
				id=1;
			}
		}
		else{
			id=id-1;
			if(id<1){
				id=6;
			}
		}
	
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