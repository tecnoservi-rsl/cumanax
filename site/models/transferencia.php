<?php

class transferencia extends pago
{
  
   
    public $_nro_referancia;
 
  
  
    public function __construct() {
        $this->_db = new Database();

    }
    
  
  
 

    public function guardar($id){



        $sql = "INSERT INTO transferencia VALUES ('','$this->_id_banco', '$id','$this->_fecha_emicion','$this->_descripcion','$this->_nro_referancia' ,".number_format($this->_cantidad,2,'.','').");";                



        $this->_db->query($sql);
                
        $this->_id=$this->_db->lastInsertid();

        if($this->_id != '0'){

          return(TRUE);
        }else{
          return(FALSE);
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
  





 public function cargar_bd($id){


        $datos = $this->_db->query( 
                        "select * from transferencia where id_orden_de_pago= '$id'"
                        );
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id_orden_de_pago=$id;

                return $datoss;

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
       



}

?>
