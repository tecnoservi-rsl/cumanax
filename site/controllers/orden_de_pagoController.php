<?php


class orden_de_pagoController extends Controller
{
	
	private $_orden_de_pago;
    private $_proveedor;
    private $_banco;

    private $_array_orden_antecedentes;
  

    public function __construct() {
        parent::__construct();
  	$this->_orden_de_pago=$this->loadModel('orden_de_pago');
    $this->_proveedor=$this->loadModel('proveedor');
    $this->_banco=$this->loadModel('banco');

    $this->includeModel('pago');
    $this->includeModel('transferencia');
    $this->includeModel('cheque');
    $this->includeModel('chequera');
    $this->includeModel('factura');
    $this->includeModel('retencion');
    $this->includeModel('descuento');

    }

    public function index()
    {



            
            $this->_view->setCss(array('css'));
            $this->_view->titulo = 'Orden de pago';
            
            
            $rs = $this->_banco->listar_todo();
            $banco= array();
            for ($i=0; $i < count($rs) ; $i++) {      
            $banco[]=$this->_banco->cargar_bd($rs[$i]['id_banco']);
            }
            
            $rs=orden_de_pagomodel::traer_ordenes_de_pago_por_confirmar();
            $orden= array();
            for ($i=0; $i < count($rs) ; $i++) { 
               
              $hola=new orden_de_pagoModel;
              
              $hola->cargar_bd($rs[$i]['id_orden_de_pago']);

              $hola->abonos=$this->abonos_orden_de_pago($hola->_factura->_id,$hola->_id);


              $orden[]=$hola;

            }

           
        
            //print_r($orden);


            
            

            if(session::get("role")=='3' ){
                
                $this->_view->setJs(array('js','validad_form'));
                $this->_view->renderizar('index'); 
                
                
            }else if (session::get("role")=='2') {
                $this->_view->setJs(array('js_jefe','validad_form'));
                $this->_view->banco=$banco;
                $this->_view->orden=$orden;
                //print_r($orden);
                $this->_view->renderizar('index_jefe');

            }
          

	
	}

    public function montar_selec_prov(){


        $array_prov=$this->_proveedor->cargar_bd_rif($_GET['rif']);

        $this->_proveedor->listar_facturas();

       echo json_encode($this->_proveedor);


    }

    public function montar_datos_factura(){


      $this->_proveedor->traer_factura($_GET['id']);

      $this->_proveedor->_factura->_iva=($this->_proveedor->_factura->_sub_total/100)*$this->_proveedor->_factura->_impuesto;

       $cantidad_pagada=orden_de_pagoModel::pagos_para_facturas($_GET['id']);
           
            if (isset($cantidad_pagada['pagado'])) {
             
              
      $this->_proveedor->_factura->_abono=$cantidad_pagada['pagado'];
     $this->_proveedor->_factura->_saldo_pendiente=(($this->_proveedor->_factura->_total-$this->_proveedor->_factura->_retencion->_retencion)-$this->_proveedor->_factura->_abono);
             
            

          }else{

 $this->_proveedor->_factura->_abono="0";
     $this->_proveedor->_factura->_saldo_pendiente=($this->_proveedor->_factura->_total-$this->_proveedor->_factura->_retencion->_retencion);



            
          }

      

      echo json_encode($this->_proveedor);




    }

      public function datosbanco(){


      $this->_banco->cargar_bd($_GET['id']);

     


      echo json_encode($this->_banco);




    }


	  
	 

      public function guardar_orden_de_pago(){


      $this->_orden_de_pago->cargar($_GET);

      $this->_orden_de_pago->guardar();

        $this->_orden_de_pago->_id_proveedor=$_GET['id_proveedor'];

      echo json_encode($this->_orden_de_pago);




    }
    public function datos_orden(){



             
              
              $this->_orden_de_pago->cargar_bd($_GET['id']);

              
              $this->_orden_de_pago->_factura->_iva=($this->_orden_de_pago->_factura->_sub_total/100)*$this->_orden_de_pago->_factura->_impuesto;
              $this->_orden_de_pago->_factura->_total_a_pagar=($this->_orden_de_pago->_factura->_total-$this->_orden_de_pago->_factura->_retencion->_retencion);


              $this->_orden_de_pago->abonos=$this->abonos_orden_de_pago($this->_orden_de_pago->_factura->_id,$this->_orden_de_pago->_id);

    
      echo json_encode($this->_orden_de_pago);




    }




 public function antecedentes(){


//print_r($_GET);

       $rs= orden_de_pagoModel::traer_ordenes_de_pago_por_id_factura($_GET['orden_de_pago']['_factura']['_id'],$_GET['orden_de_pago']['_id']);
             
              
          echo json_encode($rs);

              
             
    
      




    }


     public function guardar_descuentos(){


                     
                $descuento1= new descuento;

                                              $datos1= array(

                                                'cantidad' => $_GET['prontop'] ,
                                                'tipo' => 'pronto pago' 

                                                );

                $descuento1->cargar($datos1);


                $descuento2= new descuento;

                                                $datos2= array(

                                                  'cantidad' => $_GET['pardana'] ,
                                                  'tipo' => 'par dañado' 

                                                  );

                $descuento2->cargar($datos2);



                $descuento3= new descuento;

                                                $datos3= array(

                                                  'cantidad' => $_GET['parfalt'] ,
                                                  'tipo' => 'par faltante' 

                                                  );

                $descuento3->cargar($datos3);

                $descuento1->guardar($_GET['datos']['_factura']['_id']);
                $descuento2->guardar($_GET['datos']['_factura']['_id']);
                $descuento3->guardar($_GET['datos']['_factura']['_id']);

              

    }

       public function abonos_orden_de_pago($id_factura,$id_orden_de_pago){

              $array_orden=array();

              $array = orden_de_pagoModel::traer_ordenes_de_pago_por_id_factura($id_factura,$id_orden_de_pago);

            

              for ($i=0; $i < count($array) ; $i++) { 

              
                    
                    $xx= new orden_de_pagoModel;

                    $xx->cargar_bd($array[$i]['id_orden_de_pago']);   


                    $array_orden[]=$xx;



                     }       
               

                     return $array_orden;

              

    }





   public function confirmar_orden(){

             


        if($_POST['tipo_pago']=='transferencia'){

          $transferencia= new transferencia;
          $transferencia->cargar($_POST['pago']);
          $transferencia->_id_banco=$_POST['orden_de_pago']['banco']['_id'];

          $transferencia->guardar($_POST['orden_de_pago']['_id']);
         // print_r($transferencia);

        }
          if($_POST['tipo_pago']=='cheque'){

          $cheque= new cheque;
          $cheque->cargar($_POST['pago']);
          $cheque->guardar($_POST['orden_de_pago']['_id']);
          //print_r($cheque);

        }

        $this->_orden_de_pago->cargar_bd($_POST['orden_de_pago']['_id']);

       $this->_orden_de_pago->actializar_stado("completada");
       $this->_orden_de_pago->actializar_tipo_pago($_POST['tipo_pago']);

       $this->_banco->cargar_bd($_POST['orden_de_pago']['banco']['_id']);

       $this->_banco->actualizar_saldo($_POST['pago']['cantidad']);


       if($_POST['pago']['cantidad']==$_POST['orden_de_pago']['total_cancelar_final']){

        $factura=new factura;
        $factura->cargar_bd($_POST['orden_de_pago']['_factura']['_id']);
        $factura->actualizar_factura('pagada');

       }

     // print_r($_POST);





       echo json_encode($this->_orden_de_pago);






    }







    public function verificar_orden_cheque(){



   

      $this->_orden_de_pago->cargar_bd($_GET['id']);


    if(!empty($this->_orden_de_pago->_tipo_pago)){

      if ($this->_orden_de_pago->_tipo_pago=="cheque") {
        echo 1;
      }else
      {
        echo json_encode($this->_orden_de_pago->_transferencia);
      }

    }else
    {
      echo 2;
    }

     


    }
    public function verificar_factura(){


      $this->_proveedor->cargar_datos_por_id_factura($_GET['id']);
   

      


      if(!empty($this->_proveedor->_id)){

    
        echo 1;
      

    }else{
      echo 2;
    }


    }


	
}


?>