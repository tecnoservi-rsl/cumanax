<?php

class retencion
{
    
    public $_id;
    public $_nro_comprobante; 
    public $_porcentaje_retencion;
    public $_iva;
    public $_retencion;
  
    

    
 
  


    public function __construct() {
        $this->_db = new Database();
    }
    
  
    public function cargar($datos){

          $this->_nro_comprobante            =$datos['nro_comprobante'];
          $this->_porcentaje_retencion       =$datos['porcentaje_retencion'];
          $this->_iva                        =$datos['iva'];
        
         
      

   }
 

    public function guardar($id){



     echo $sql = "INSERT INTO retencion\n"
    . "VALUES (\n"
    . " '',\n"
    . " '$id',\n"
    . " '$this->_nro_comprobante',\n"
    . " ".number_format($this->_retencion,2,'.','')."\n"
    . " );";

        $this->_db->query($sql);

       $this->_id=$this->_db->lastInsertid();
                
      

   }
   public function editar($id){



       $sql = "UPDATE retencion SET retencion = '$this->_retencion' \n"
    . "WHERE id_factura = '$id';";


        $this->_db->query($sql);
                
        
          return(TRUE);
       

   }
    public function calcular_retencion(){


        $retencion = ((float)$this->_iva/100)*(float)$this->_porcentaje_retencion;
      
                
        
         $this->_retencion=$retencion;
       

   }





 public function cargar_bd($id){


         $sql = "SELECT * FROM retencion WHERE id_factura='$id'";             
         $datos=$this->_db->query($sql);

        $datoss=$datos->fetch();


        //$this->cargar($datoss);
        $this->_id=$datoss['id_retencion'];
        $this->_retencion=$datoss['retencion'];
        $this->_nro_comprobante=$datoss['nro_comprobante'];
        return $datos->fetch();

   }
 

   public function eliminar($id){


            $sql = "DELETE FROM chequera WHERE id_chequera = '$id'";            


            $datos=$this->_db->query($sql);
           
        }





}

?>
