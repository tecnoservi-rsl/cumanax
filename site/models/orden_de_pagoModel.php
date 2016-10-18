<?php

class orden_de_pagoModel 
{
    public $_db;
    public $_id;
    public $_fecha_emicion;
    public $_estatus;
    public $_factura;
    public $_descuento= array();
    public $_pago;
  
    public function __construct() {
        $this->_db = new Database();

    }
    
  
    public function cargar($datos){


        if(isset($datos['id'])){
          $this->_id             =$datos['id'];
        }
        if(isset($datos['tipo_pago'])){
          $this->_tipo_pago             =$datos['tipo_pago'];
        }else{
          $this->_tipo_pago             ="";
        }

        if(isset($datos['estatus'])){
          $this->_estatus            =$datos['estatus'];
        }if(isset($datos['id_factura'])){
          $this->_id_factura            =$datos['id_factura'];
        }
         if(isset($datos['fecha_emicion'])){
          $this->_fecha_emicion     =$datos['fecha_emicion'];
        }else{
           $this->_fecha_emicion  = date("Y/m/d");
        }
        
       
      
       
      

   }
 

    public function guardar(){


       $sql="SELECT * FROM `frame`.`orden_pago` WHERE id_factura='$this->_id_factura' and estatus='Generada'  ";


      $dato=$this->_db->query($sql);
      $datos=$dato->fetch();
      
      if(isset($datos['id_orden_de_pago'])){

        
        $this->_id=$datos['id_orden_de_pago'];

      }else{
       $sql = "INSERT INTO `frame`.`orden_pago` VALUES \n"
    . "(NULL,\n"
    . "'".$_GET['id_factura']."',\n"
    . "'$this->_fecha_emicion',\n"
    . "'$this->_tipo_pago',\n"
    . " 'Generada')";


        $this->_db->query($sql);
                
        $this->_id=$this->_db->lastInsertid();

        if($this->_id != '0'){

          return(TRUE);
        }else{
          return(FALSE);
        }


      }

       
   }
   public function editar($id){



       $sql = "UPDATE proveedor SET beneficiario = '$this->_beneficiario', nombre = '$this->_nombre', rif = '$this->_rif', contacto = '$this->_contacto', direccion = '$this->_direccion', tipo_credito = '$this->_tipo_credito', porcentaje_retencion = '$this->_porcentaje_retencion', tlf = '$this->_tlf' WHERE id_proveedor = '$id';";              



        $this->_db->query($sql);
                
        
          return(TRUE);
       

   }

 public function listar($numero_filas,$desde){


            $sql = "SELECT * FROM `proveedor`limit $desde,$numero_filas";              


            $datos=$this->_db->query($sql);
            return $datos->fetchall(); 

               }

            public function count_reg(){

            $sql = "SELECT count(tlf) as numero FROM `proveedor` ";          

            $datos=$this->_db->query($sql);
            return $datos->fetch(); 

   }
  



 

 public function cargar_bd($id =FALSE){

        if($id != FALSE){

          $datos = $this->_db->query( 
                        "select * from orden_pago where id_orden_de_pago = '$id'"
                        );
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id=$id;


                $cheque=new cheque;
                $cheque->cargar_bd($id);
                $this->_cheque=$cheque;
              

                $this->_transferencia=new transferencia;
                $this->_transferencia->cargar_bd($id);




                $this->_factura=new factura;
                $this->_factura->cargar_bd($datoss['id_factura']);
                



               
               




                return $datoss;
        }else{


             $datos = $this->_db->query( 
                        "select * from orden_pago"
                        );
                
                $datoss=$datos->fetchall();

                //$this->cargar($datoss);
                //$this->_id=$id;

                return $datoss;




        }


        $datos = $this->_db->query( 
                        "select * from orden_pago where id_orden_de_pago = '$id'"
                        );
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id=$id;

                return $datoss;

   }

   public function eliminar($id){


            $sql = "DELETE FROM proveedor WHERE id_proveedor = '$id'";            


            $datos=$this->_db->query($sql);
           
        }

         public function listar_facturas(){

            $sql = "SELECT * FROM factura WHERE id_proveedor='$this->_id'";             
            $datos=$this->_db->query($sql);
            $datoss=$datos->fetchall();
            for ($i=0; $i < count($datoss) ; $i++) { 
            $factura= new factura;
            $factura->cargar_bd($datoss[$i]['id_factura']);
            $this->_factura[$i]=$factura;
          } 
           
        }
         public function traer_factura($id){

             $factura= new factura;

          $factura->cargar_bd($id);

         

           $arrayName = array(

               'id'     =>   $factura->_id,
              'nro_control'     =>   $factura->_nro_control,
              'descuento'     =>   $factura->_descuento,
               'tipo_descuento'     =>   $factura->_tipo_descuento,
              'impuesto'     =>   $factura->_impuesto ,
              'fecha_vencimiento'     =>   $factura->_fecha_vencimiento, 
              'fecha_elavoracion'     =>   $factura->_fecha_elavoracion,
              'fecha_recepcion'     =>   $factura->_fecha_recepcion ,
              'tipo'     =>   $factura->_tipo ,
              'total'     =>   $factura->_total ,
              'sub_total'     =>   $factura->_sub_total,
              'monto'     =>   $factura->_monto 

            );

          return $arrayName;

         
          } 

          public function editar_factura($datos){


         
          $factura= new factura;

          $factura->cargar($datos);

          $factura->editar($datos["id"],$this->_porcentaje_retencion);

          $this->_factura=$factura;



         
        
        }
          public function guardar_factura($datos){


         
          $factura= new factura;
          $factura->cargar($datos);

          $this->cargar_bd($datos["id"]);

          $factura->guardar($datos["id"],$this->_porcentaje_retencion);

          $this->_factura=$factura;
          

        

         
        
        }
         public function eliminar_factura($id){



             $factura= new factura;
             $factura->eliminar($id);
           
        }

          public function comprovar($id){

            $sql = "SELECT * FROM orden_pago WHERE id_factura='$id'  and id_pago is NULL; ";             
            $datos=$this->_db->query($sql);
            
            return $datos->fetch();
             
           
        }
         static function pagos_para_facturas($id){

              $sql = "SELECT sum(pago.cantidad) as pagado FROM orden_pago,pago where orden_pago.id_orden_de_pago=pago.id_orden_de_pago and orden_pago.id_factura='$id'";  

              $db = new Database();

            $datos=$db->query($sql);
            
            return $datos->fetch();
             
        
        }
        static function traer_ordenes_de_pago_por_confirmar(){

$sql = "SELECT distinct orden_pago.* FROM\n"
    . "\n"
    . "orden_pago ,\n"
    . "factura \n"
    . "\n"
    . "WHERE \n"
    . "\n"
    . "orden_pago.estatus='Generada' and \n"
    . "orden_pago.id_factura=factura.id_factura and \n"
    . "factura.estatus='no cancelada' ";

              $db = new Database();

            $datos=$db->query($sql);
            
            return $datos->fetchall();




        }

         static function traer_ordenes_de_pago_por_id_factura($id,$id_orden){

  $sql = "SELECT * FROM\n"
    . "\n"
    . "orden_pago \n"
    . "\n"
    . "WHERE \n"
    . "\n"
    . "id_factura='$id' and id_orden_de_pago != '$id_orden' and estatus='completada'   ;";

              $db = new Database();

            $datos=$db->query($sql);
            
            return $datos->fetchall();




        }

      public function actializar_stado($strim){

 $sql = "UPDATE `frame`.`orden_pago` SET `estatus` = '$strim' WHERE `orden_pago`.`id_orden_de_pago` = '$this->_id';";

            
          $this->_db->query($sql);
            
            



        }
          public function actializar_tipo_pago($strim){

 $sql = "UPDATE `frame`.`orden_pago` SET `tipo_pago` = '$strim' WHERE `orden_pago`.`id_orden_de_pago` = '$this->_id';";

            
          $this->_db->query($sql);
            
            



        }

            


}

?>
