<?php

class factura
{
   
    public $_id;
    public $_nro_control;
    public $_nro_factura;
    public $_descuento; 
    public $_tipo_descuento;
    public $_impuesto;
    public $_fecha_recepcion;
    public $_fecha_elavoracion;
    public $_fecha_vencimiento;
    public $_tipo;
    public $_total;
    public $_monto;
    public $_sub_total;
    public $_retencion;
    public $_estatus;
    public $_descuentos= array();
   

    

  


    public function __construct() {
        $this->_db = new Database();
      
    }
    
  
    public function cargar($datos){

          $this->_nro_control          =$datos['nro_control'];
          $this->_nro_factura          =$datos['nro_factura'];
          $this->_descuento            =$datos['descuento'];
          $this->_impuesto             =$datos['impuesto'];
          $this->_tipo_descuento       =$datos['tipo_descuento'];
          $this->_fecha_elavoracion    =$datos['fecha_elavoracion' ];
          $this->_fecha_recepcion      =$datos['fecha_recepcion' ];
          $this->_fecha_vencimiento    =$datos['fecha_vencimiento'];
          $this->_tipo                 =$datos['tipo' ];
          $this->_total                =$datos['total' ];
          $this->_sub_total            =$datos['sub_total' ];
          $this->_monto                =$datos['monto' ];

   }
    public function mostrar(){


          echo       $this->_nro_control;
          echo       $this->_descuento;
          echo       $this->_impuesto ;
          echo       $this->_fecha_vencimiento; 
          echo       $this->_fecha_elavoracion ;
          echo       $this->_fecha_recepcion ;
          echo       $this->_tipo ;
          echo       $this->_total ;
          echo       $this->_sub_total;
          echo       $this->_monto ;    
          
      

   }
 

    public function guardar($id,$porcentaje_retencion){


      


     echo $sql = "INSERT INTO factura \n"
    . "VALUES \n"
    . "(\n"
    . " '', \n"
    . " '$id', \n"
    . " '$this->_nro_control', \n"
    . " '$this->_nro_factura', \n"
    . " '$this->_descuento', \n"
    . " '$this->_tipo_descuento', \n"
    . " '$this->_impuesto', \n"
    . " (INTERVAL 30 DAY + '$this->_fecha_recepcion'), \n"
    . " '$this->_fecha_elavoracion', \n"
    . " '$this->_fecha_recepcion', \n"
    . " '$this->_tipo', \n"
    . " '$this->_total', \n"
    . " '$this->_sub_total', \n"
    . " '$this->_monto',\n"
    . " 'no cancelada'\n"
    . " \n"
    . ");";



        $this->_db->query($sql);
        $id_factura=$this->_db->lastInsertId();

    $retencion= new retencion;   

    $iva = ((float)$this->_sub_total/100)*(float)$this->_impuesto;
    
    $datos['iva']=(float)$iva;
     $datos['porcentaje_retencion']=(float)$porcentaje_retencion;
      $datos['nro_comprobante']=uniqid();


    $retencion->cargar($datos);
    $retencion->calcular_retencion();
    $retencion->guardar($id_factura);  

    $this->_retencion=$retencion;    
      

   }
   public function editar($id,$porcentaje_retencion){



    $sql = "UPDATE factura SET \n"
    . "`nro_control` = '$this->_nro_control',\n"
    . "`nro_factura` = '$this->_nro_factura',\n"
    . "`descuento` = '$this->_descuento',\n"
    . "`tipo_descuento` = '$this->_tipo_descuento',\n"
    . "`impuesto` = '$this->_impuesto',\n"
    . "`fecha_vencimiento` = (INTERVAL 30 DAY + '$this->_fecha_recepcion'),\n"
    . "`fecha_elavoracion` = '$this->_fecha_elavoracion',\n"
    . "`fecha_recepcion` = '$this->_fecha_recepcion',\n"
    . "`tipo` = '$this->_tipo',\n"
    . "`total` = '$this->_total',\n"
    . "`sub_total` = '$this->_sub_total',\n"
    . "`monto` = '$this->_monto' \n"
    . "WHERE id_factura = '$id';";


        $this->_db->query($sql);
                
        
         $retencion= new retencion;   

    $iva = ($this->_sub_total/100)*$this->_impuesto;
    
    $datos['iva']=$iva;
     $datos['porcentaje_retencion']=$porcentaje_retencion;
      $datos['nro_comprobante']='123456';


    $retencion->cargar($datos);
    $retencion->calcular_retencion();
    $retencion->editar($id);

    $this->retencion=$retencion;

   }

 public function listar($numero_filas,$desde){


            $sql = "SELECT * FROM `factura` WHERE id_factura='$id' limit $desde,$numero_filas";              


            $datos=$this->_db->query($sql);
            return $datos->fetchall(); 

               }


            public function count_reg(){

            $sql = "SELECT count(id_factura) as numero FROM `factura` ";          

            $datos=$this->_db->query($sql);
            return $datos->fetch(); 

   }
  


 public function cargar_bd($id){


         $sql = "SELECT * FROM factura WHERE id_factura='$id'";             
         $datos=$this->_db->query($sql);

        $datoss=$datos->fetch();


        $this->cargar($datoss);
        $this->_id=$datoss['id_factura'];
        $this->_estatus=$datoss['estatus'];
        $this->_id_proveeodor=$datoss['id_proveedor'];

        $retencion= new retencion;   

    
        $retencion->cargar_bd($id);
    
        $this->_retencion=$retencion;


         $descuento=new descuento;





                $rs=$descuento->cargar_bd($this->_id);
                for ($i=0; $i < count($rs) ; $i++) { 
                  $des=new descuento;
                  $des->cargar($rs[$i]);
                  $this->_descuentos[$i]=$des;

                }



        
        return $datos->fetch();

   }
  public function cargar_bd_nro($id){


         $sql = "SELECT * FROM factura WHERE nro_factura='$id'";             
         $datos=$this->_db->query($sql);

        $datoss=$datos->fetch();


        $this->cargar($datoss);
        $this->_id=$datoss['id_factura'];
        $this->_estatus=$datoss['estatus'];
        $this->_id_proveeodor=$datoss['id_proveedor'];

        $retencion= new retencion;   

    
        $retencion->cargar_bd($this->_id);
    
        $this->_retencion=$retencion;


         $descuento=new descuento;





                $rs=$descuento->cargar_bd($this->_id);
                for ($i=0; $i < count($rs) ; $i++) { 
                  $des=new descuento;
                  $des->cargar($rs[$i]);
                  $this->_descuentos[$i]=$des;

                }



        
        return $datos->fetch();

   }

   public function eliminar($id){


            echo $sql = "DELETE FROM factura WHERE id_factura = '$id'";            


            $datos=$this->_db->query($sql);
           
        }


     public function actualizar_factura($strem){


                        
$sql = "UPDATE `frame`.`factura` SET `estatus` = '$strem' WHERE `factura`.`id_factura` = '$this->_id';";

            $this->_db->query($sql);
           
        }

  public function buscar_nro($datos){


                        
            $sql = "SELECT * FROM factura WHERE nro_factura= '".$datos['valor']."' ";

            $res=$this->_db->query($sql);

            return $res->fetch(); 
           
        }







}

?>
