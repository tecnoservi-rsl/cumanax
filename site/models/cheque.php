<?php

class cheque extends pago
{
  
   
    public $_fecha_liberacion;
   
   
  
  
    public function __construct() {
        $this->_db = new Database();

    }
    
  


    public function guardar($id){



       $sql = "INSERT INTO cheque VALUES ('','$this->_id_chequera', '$id','$this->_fecha_emicion','$this->_descripcion','$this->_fecha_liberacion' ,".number_format($this->_cantidad,2,'.','').",'activo');";                



        $this->_db->query($sql);
                
        $this->_id=$this->_db->lastInsertid();

        if($this->_id != '0'){

          return(TRUE);
        }else{
          return(FALSE);
        }

   }
   public function editar_estado(){



       $sql = "UPDATE cheque SET estado = 'cancelado' WHERE id_cheque = '$this->_id';";              



        $this->_db->query($sql);
                
        
          return(TRUE);
       

   }





  

 public function cargar_bd($id){

$sql="select * from cheque where id_orden_de_pago = '$id'";

        $datos = $this->_db->query( $sql);
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id_orden_de_pago=$id;
              
                return $datoss;

   }
    public function cargar_bd_2($id){

$sql="select * from cheque where id_cheque = '$id'";

        $datos = $this->_db->query($sql);
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id_orden_de_pago=$id;
              //  $this->_id_=$id;
              
                return $datoss;

   }
   
    public function listar_por_chequera($id){

$sql="select * from cheque where id_chequera = '$id' and estado='activo'";
  
 
        $datos = $this->_db->query( $sql);
                
                
                return $datos->fetchall();

   }

       public function listar_por_estado_y_fecha($accion){


$retVal = '1';
if ($accion=='cancelado') {
  $retVal = "estado='cancelado'";
}else if ($accion=='posfechado') {
  $retVal ="fecha_liberancion between curdate() and '2500/12/31'";
}else if ($accion=='activo') {
 $retVal ="estado='activo'";
}


 $sql="select * from cheque where $retVal";
  
 
        $datos = $this->_db->query( $sql);
                
                
                return $datos->fetchall();

   }
    



}

?>
