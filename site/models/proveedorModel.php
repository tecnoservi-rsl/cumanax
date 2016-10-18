<?php

class proveedorModel 
{
  
    public $_id;
    public $_beneficiario; 
    public $_nombre;
    public $_rif;
    public $_contacto;
    public $_direccion;
    public $_tipo_credito;
    public $_porcentaje_retencion;
    public $_tlf;
    public $_factura;
  


    public function __construct() {
        $this->_db = new Database();

    }
    
  
    public function cargar($datos){


         
          $this->_beneficiario             =strtoupper($datos['beneficiario']);
          $this->_nombre                   =strtoupper($datos['nombre']);
          $this->_rif                      =$datos['rif' ];
          $this->_contacto                 =strtoupper($datos['contacto']);
          $this->_direccion                =strtoupper($datos['direccion']);
          $this->_tipo_credito             =strtoupper($datos['tipo_credito']);
          $this->_porcentaje_retencion     =$datos['porcentaje_retencion'];
          $this->_tlf                      =$datos['tlf' ];


   }
 

    public function guardar(){



        $sql = "INSERT INTO proveedor VALUES ('','$this->_beneficiario', '$this->_nombre','$this->_rif','$this->_contacto','$this->_direccion' ,'$this->_tipo_credito','$this->_porcentaje_retencion','$this->_tlf' );";                



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
  



  
    public function all(){


        $datos = $this->_db->query( 
                        "select * from proveedor where 1"
                        );
                
                return $datos->fetchall();

   }

 public function cargar_bd($id){


        $datos = $this->_db->query( 
                        "select * from proveedor where id_proveedor = '$id'"
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

            $sql = "SELECT * FROM factura WHERE id_proveedor='$this->_id' and estatus ='no cancelada'";             
            $datos=$this->_db->query($sql);
            $datoss=$datos->fetchall();
            for ($i=0; $i < count($datoss) ; $i++) { 
            $factura= new factura;
            $factura->cargar_bd($datoss[$i]['id_factura']);
            $cantidad_pagada=orden_de_pagoModel::pagos_para_facturas($datoss[$i]['id_factura']);
           // print_r($cantidad_pagada);
            if (isset($cantidad_pagada['pagado'])) {
             if ($cantidad_pagada['pagado']<($factura->_total-$factura->_retencion->_retencion)) {
              
              $factura->_abono=$cantidad_pagada['pagado'];
              $factura->_saldo_pendiente=(($factura->_total-$factura->_retencion->_retencion)-$factura->_abono);
             $this->_factura[]=$factura;
            }

          }else{
            $this->_factura[]=$factura;
          }
            
          

          } 
          }
           public function listar_facturas_all(){

            $sql = "SELECT * FROM factura WHERE id_proveedor='$this->_id'";             
            $datos=$this->_db->query($sql);
            $datoss=$datos->fetchall();
            for ($i=0; $i < count($datoss) ; $i++) { 
            $factura= new factura;
            $factura->cargar_bd($datoss[$i]['id_factura']);
            $cantidad_pagada=orden_de_pagoModel::pagos_para_facturas($datoss[$i]['id_factura']);
           // print_r($cantidad_pagada);
            if (isset($cantidad_pagada['pagado'])) {
             if ($cantidad_pagada['pagado']<($factura->_total-$factura->_retencion->_retencion)) {
              
              $factura->_abono=$cantidad_pagada['pagado'];
              $factura->_saldo_pendiente=(($factura->_total-$factura->_retencion->_retencion)-$factura->_abono);
             $this->_factura[]=$factura;
            }

          }else{
            $this->_factura[]=$factura;
          }
            
          

          } 
          }
        
           
        
         public function traer_factura($id){

             $factura= new factura;

          $factura->cargar_bd($id);

        

         $this->_factura=$factura;

           $arrayName = array(

               'id'     =>   $factura->_id,
              'nro_control'     =>   $factura->_nro_control,
              'nro_factura'    =>   $factura->_nro_factura,
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
         public function cargar_bd_rif($rif){


        $datos = $this->_db->query( 
                        "select * from proveedor where rif = '$rif'"
                        );
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id=$datoss['id_proveedor'];

                return $datoss;

   }
     public function cargar_datos_por_id_factura($factura){

$datos = $this->_db->query("select proveedor.* from proveedor,factura where factura.id_proveedor = proveedor.id_proveedor and factura.nro_factura='$factura'"
                        );
                
                $datoss=$datos->fetch();

                $this->cargar($datoss);
                $this->_id=$datoss['id_proveedor'];

                return $datoss;

   }
   

   


}

?>
