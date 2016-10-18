<?php

class descuento 
{
  
    public $_id;
    public $_tipo;
    public $_cantidad;
  
  
  
    public function __construct() {
        $this->_db = new Database();

    }
    
  
    public function cargar($datos){

          if(isset($datos['id_descuento'])){
          $this->_id   =   $datos['id_descuento'];
          }
          if(isset($datos['tipo'])){
          $this->_tipo   =   $datos['tipo'];   
          }
          if(isset($datos['cantidad'])){
          $this->_cantidad   =   (int)$datos['cantidad'];
          }

   }
 
    public function cargar_bd($id){

         $sql = "SELECT * FROM `descuento` WHERE id_factura='$id'";

         $datos=$this->_db->query($sql);
         
         $xx=$datos->fetchall();


         return $xx;
   }




       public function guardar($id){

        $sql2 = "SELECT * FROM `descuento` WHERE id_factura='$id' and tipo = '$this->_tipo'";

        $datos=$this->_db->query($sql2);

        $datoss=$datos->fetchall();

        if (count($datoss) > 0) {

          $sql = "UPDATE `frame`.`descuento` SET `cantidad` = '$this->_cantidad' WHERE id_factura = '$id' and tipo='$this->_tipo' ;";

         
        }else{

             $sql = "INSERT INTO descuento  VALUES ('', '$id', '$this->_tipo', '$this->_cantidad');";
        }
    
         

       $this->_db->query($sql);
         
      


   }



}

?>
