$(document).ready(function(){

var fecha;

	$.get(base_url+'ina/fecha', function(data) {
		console.log(data.fecha);

		console.log(data.fecha_server);
		var dt = new Date(data.fecha);
		var dd = new Date(data.fecha_server);

	


		if (dd > dt) {

			borrar();
			
		}else{
			console.log("aun falta");



			jQuery(function(){
 			jQuery('#box1').flipcountdown({  
 				size:'md',
 			 	beforeDateTime: data.fecha+' 00:00:00',
 			});
			});
		





		}


		

	},"json");



});

function borrar(){

$.get('ina/updonw', function() {
			location.href=base_url;
			});

}