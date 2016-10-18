<?php

class bancoModel 
{
    public $_bd;
    public $_id;
    public $_tipo_cta; 
    public $_direccion;
    public $_nombre;
    public $_saldo;
    public $_moneda;
    public $_chequera = Array();
 
  


    public function __construct() {
        $this->_db = new Database();
    }
    
  
    public function cargar($datos){

          $this->_tipo_cta            = strtoupper($datos['tipo_cta']);
          $this->_nro_cta            =$datos['nro_cta'];
          $this->_direccion              =strtoupper($datos['direccion']);
          $this->_nombre                  =strtoupper($datos['nombre' ]);
          $this->_saldo                 =$datos['saldo'];
          $this->_moneda                =$datos['moneda'];
          
      

   }
    public function mostrar(){

          echo $this->_id;  
         echo $this->_tipo_cuenta;           
         echo $this->_direccion   ;           
         echo $this->_nombre ;         
         echo $this->_saldo ;        
         echo $this->_moneda;      
          
      

   }
 

    public function guardar(){



       $sql = "INSERT INTO  banco VALUES (NULL, '$this->_tipo_cta', '$this->_nro_cta', '$this->_direccion', '$this->_nombre', '$this->_saldo', '$this->_moneda');";               



        $this->_db->query($sql);
                
        $this->_id=$this->_db->lastInsertid();

        if($this->_id != '0'){

          return(TRUE);
        }else{
          return(FALSE);
        }

   }
   public function editar($id){



       $sql = "UPDATE banco SET tipo_cta = '$this->_tipo_cta', nro_cta = '$this->_nro_cta' , direccion = '$this->_direccion', nombre = '$this->_nombre', saldo = '$this->_saldo', moneda = '$this->_moneda' WHERE id_banco = '$id';";              



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

 public function listar_todo(){


             $sql = "SELECT * FROM `banco` ";              


            $datos=$this->_db->query($sql);
            return $datos->fetchall(); 

               }


            
  


 public function cargar_bd($id){


        $datos = $this->_db->query( 
                        "select * from banco where id_banco = '$id'"
                        );

        $datoss=$datos->fetch();

        $this->cargar($datoss);
        $this->_id=$datoss['id_banco'];



          $rs = $this->_db->query( 
                        "select * from chequera where id_banco = '$id'"
                        );

        $datosss=$rs->fetchall();

        


        for ($i=0; $i <count($datosss) ; $i++) { 
      
          $chequera=new chequera;
          $chequera->cargar_bd($datosss[$i]['id_chequera']);
          $this->_chequera[$i]=$chequera;

        }


        
        return $datoss;

   }

   public function eliminar($id){


            $sql = "DELETE FROM banco WHERE id_banco = '$id'";            


            $datos=$this->_db->query($sql);
           
        }

  public function eliminar_chequera($id){



             $chequera= new chequera;
             $chequera->eliminar($id);
           
        }


     public function listar_chequeras(){


          $sql = "SELECT * FROM chequera WHERE id_banco='$this->_id'";             
         
         $datos=$this->_db->query($sql);



        $datoss=$datos->fetchall();
         

         
          for ($i=0; $i < count($datoss) ; $i++) { 

             $chequera= new chequera;

            $chequera->cargar_bd($datoss[$i]['id_chequera']);


            
            $this->_chequera[$i]=$chequera;

          } 
        }

        public function traer_chequera($id){


         
          $chequera= new chequera;

          $chequera->cargar_bd($id);

          $chek= $arrayName = array(

            'id' => $chequera->_id ,
            'codigo' => $chequera->_codigo ,
            'desde' => $chequera->_desde ,
            'hasta' => $chequera->_hasta ,

            );

          return $chek;

         
        
        }
            public function editar_chek($datos){


         
          $chequera= new chequera;

          $chequera->cargar($datos);
          $chequera->editar($datos["id"]);

         
        
        }
          public function guardar_chek($datos){


         
          $chequera= new chequera;
          $chequera->cargar($datos);
          $chequera->guardar($datos["id"]);
          

        

         
        
        }

            public function actualizar_saldo($cantidad){

             $sql = "UPDATE `frame`.`banco` SET saldo = (saldo - $cantidad) WHERE `banco`.`id_banco` = '$this->_id' ";


        $this->_db->query($sql);

         
        
        }
         public function actualizar_saldo_2($cantidad){

             $sql = "UPDATE `frame`.`banco` SET saldo = (saldo + $cantidad) WHERE `banco`.`id_banco` = '$this->_id' ";


        $this->_db->query($sql);

         
        
        }


         public function cargar_datos_por_id_cheque($id){

$sql = "SELECT banco.* FROM banco , cheque, chequera WHERE banco.id_banco=chequera.id_banco and\n"
    . "chequera.id_chequera=cheque.id_chequera and\n"
    . "cheque.id_cheque='$id'\n"
    . "\n"
    . "";

        $datos = $this->_db->query($sql);

        $datoss=$datos->fetch();

        $this->cargar($datoss);
        $this->_id=$datoss['id_banco'];



          $rs = $this->_db->query( 
                        "select * from chequera where id_banco = '$this->_id'"
                        );

        $datosss=$rs->fetchall();

        


        for ($i=0; $i <count($datosss) ; $i++) { 
      
          $chequera=new chequera;
          $chequera->cargar_bd($datosss[$i]['id_chequera']);
          $this->_chequera[$i]=$chequera;

        }


        
        return $datoss;

   }






}

?>
