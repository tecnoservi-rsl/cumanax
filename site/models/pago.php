<?php

class pago 
{
  
    public $_id;
    public $_fecha_emicion;
    public $_cantidad;
    public $_descripcion;


  
  
  
    public function __construct() {
        $this->_db = new Database();

    }
    
  
    public function cargar($datos){

 if (isset($datos['id_cheque'])) {
       $this->_id=$datos['id_cheque'];

      }
       if (isset($datos['id_orden_de_pago'])) {
       $this->_id_orden=$datos['id_orden_de_pago'];

      }
       if (isset($datos['id_chequera'])) {
       $this->_id_chequera=$datos['id_chequera'];

      }
       if (isset($datos['id_chequera'])) {
       $this->_id_chequera=$datos['id_chequera'];

      }
      if (isset($datos['id_transferencia'])) {
       $this->_id=$datos['id_transferencia'];

      }
      
       $this->_fecha_emicion=date('Y/m/d');
       
      
       if (isset($datos['descripcion'])) {
       $this->_descripcion=$datos['descripcion'];
       
      }
      if (isset($datos['fecha_liberacion'])) {
       $this->_fecha_liberacion=$datos['fecha_liberacion'];
       
      }
      if (isset($datos['fecha_liberancion'])) {
       $this->_fecha_liberacion=$datos['fecha_liberancion'];
       
      }
      if (isset($datos['cantidad'])) {
       $this->_cantidad=(float)$datos['cantidad'];
       
      }
        if (isset($datos['nro_referencia'])) {
       $this->_nro_referancia=$datos['nro_referencia'];
       
      }
   


   }
 
 



}

?>
