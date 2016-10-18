$(document).ready(function(){


if ($('#_ROL_').val()=='3' || $('#_ROL_').val()=='5') {

$(".glyphicon-pencil").remove();
$(".glyphicon-trash").remove()

}




					/*funcion en el evento on click paginador----
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#editar",function(){

				var id=this.dataset.id;
				document.location=base_url+"banco/gestionar2/"+id;


				});


					/*funcion en el evento on click eliminar----
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#eliminar",function(){

				var id=this.dataset.id;

				
			alertify.confirm("¿Estas seguro que desea eliminar este registro?", function (e) {
			if (e) {	

				$.get(base_url+"banco/eliminar",{/*funcion get al server*/
				'id':id
				},function(mensaje){
				location.reload('true');
				});
			
			} else {
				alertify.error("ha cancelado la eliminacion");
			}
			});

				});
					/*funcion en el evento on click paginador----
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click","#ver",function(){

				var id=this.dataset.id;
				document.location=base_url+"banco/gestionar4/"+id;




				});
				function depocitar(cantidad,id){

			
				$.get(base_url+"banco/depocitar",{
					
					"cantidad":cantidad,
					"id"      :id
				},function(dato){

					location.reload('true');

					});



				}
				$(document).on("click","#depocitar",function(){

				var id=this.dataset.id;
				//document.location=base_url+"banco/gestionar4/"+id;

				


				  alertify.prompt("cantidad a depocitar", function (e, str) {
					    // str is the input text
					    if (e) {
					        
					        depocitar(str,id);

					    } else {
					         alertify.error('Cancel');
					    }
					}, "0.00");









				});



				/*funcion en el evento on click paginador----
				/*--------------------------------------------------------------------------------------------------------*/
				$(document).on("click",".pag",function(){


				var pag=this.dataset.pag;

				document.location=base_url+"banco/gestionar/"+pag;
				

				});
				/*--------------------------------------------------------------------------------------------------------*/


		





});