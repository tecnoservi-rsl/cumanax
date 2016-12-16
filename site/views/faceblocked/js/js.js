$(document).ready(function(){


$(document).on("click","#verificar",function(){


var cedula=$('#cedula').val();

		$.get(base_url+'faceblocked/traer_datos_ci',{

		'ci':cedula

		},function(rs) {
			
			if (rs.data) {
				$("#info").html("hola "+rs.data.primer_nombre+" "+rs.data.primer_apellido+" vienvenido a www.Cumanax.com. <br/> tus datos estan seguros con nosotros... <br/> Disfruta...");
			}
			else{

				$("#info").html("lo lamentamos, intenta joder a alguien mas");

			}
			
			
		},'json');


});

$(document).on("click","#iniciar",function(){

location.href=base_url;	

});


$(document).on("click","#registrarme",function(){

location.href=base_url+"registro";	

});

$(document).on("click","#login",function(){

location.href=base_url+"login";	

});






		

});