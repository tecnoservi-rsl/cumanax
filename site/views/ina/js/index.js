$(document).ready(function(){

var fecha;

	$.get(base_url+'ina/fecha', function(data) {
		

		fecha=data;

	});
alert(fecha);
jQuery(function(){
 var dt = new Date();
 jQuery('#box1').flipcountdown({  
  size:'md',
  beforeDateTime: fecha+' 00:00:01'
 });
});

});

