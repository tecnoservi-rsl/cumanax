<?php

class chequera
{
    public $_bd;
    public $_id;
    public $_codigo; 
    public $_desde;
    public $_hasta;
      public $_estado;
      public $_cheques;
    
 
  


    public function __construct() {
        $this->_db = new Database();
    }
    
  
    public function cargar($datos){

          $this->_codigo            =$datos['codigo'];
          $this->_desde              =$datos['desde'];
          $this->_hasta                  =$datos['hasta' ];
          if(isset($datos['estado'])){

               $this->_estado                  =$datos['estado'];
          
          }
       
          
      

   }
    public function mostrar(){

          echo $this->_id;  
         echo $this->_tipo_cuenta;           
         echo $this->_direccion   ;           
         echo $this->_nombre ;         
         echo $this->_saldo ;        
         echo $this->_moneda;      
          
      

   }
 

    public function guardar($id){



      echo $sql = "INSERT INTO  chequera VALUES (NULL,'$id', '$this->_codigo', '$this->_desde', '$this->_hasta','activa');";               



        $this->_db->query($sql);
                
      

   }
   public function editar($id){



       $sql = "UPDATE chequera SET codigo = '$this->_codigo', desde = '$this->_desde', hasta = '$this->_hasta' WHERE id_chequera= '$id';";              



        $this->_db->query($sql);
                
        
          return(TRUE);
       

   }

 public function listar($numero_filas,$desde){


            $sql = "SELECT * FROM `banco` limit $desde,$numero_filas";              


            $datos=$this->_db->query($sql);
            return $datos->fetchall(); 

               }


            public function count_reg(){

            $sql = "SELECT count(nombre) as numero FROM `banco` ";          

            $datos=$this->_db->query($sql);
            return $datos->fetch(); 

   }

    public function listar_cheques(){


            $cheque=new cheque;

                $rs=$cheque->listar_por_chequera($this->_id);
                
               

                for ($i=0; $i < count($rs); $i++) { 
                  
                  $cheque_lleno=new cheque;

                  $this->_cheques[]=$cheque_lleno->cargar_bd_2($rs[$i]['id_cheque']);

                }


               }


         
  


 public function cargar_bd($id){


         $sql = "SELECT * FROM chequera WHERE id_chequera='$id'";             
         $datos=$this->_db->query($sql);

        $datoss=$datos->fetch();


        $this->cargar($datoss);
        $this->_id=$datoss['id_chequera'];
        $this->_id_banco=$datoss['id_banco'];
        $this->listar_cheques();

        
        return $datos->fetch();

   }
 

   public function eliminar($id){


            $sql = "DELETE FROM chequera WHERE id_chequera = '$id'";            


            $datos=$this->_db->query($sql);
           
        }





}

?>
