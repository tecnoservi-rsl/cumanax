<?php


class bancoController extends Controller
{
	
	private $_banco;

    public function __construct() {
        parent::__construct();
        $this->includeModel('chequera');
         $this->includeModel('pago');
         $this->includeModel('cheque');
         $this->includeModel('transferencia');
            $this->includeModel('factura');
             $this->includeModel('retencion');
              $this->includeModel('descuento');
        

  	
    }

    public function index()
    {

    
    	if (isset($_GET["accion"]))  {

    		
            if ($_GET["accion"]=="agregar")  {
                	$this->formu_agregar();
                	}else{

                		$this->gestionar(1);
                	}



            }else{

            		$this->redireccionar();
                		
                	}
	
	}
	  public function formu_agregar()
    {

    		
		
			$this->_view->setJs(array('js','validad_form'));
			$this->_view->setCss(array('css'));
        	$this->_view->titulo = 'bancos';
            $this->_view->accionn = 'guardar';
			$this->_view->renderizar('formulario_banco');
									
	}	
	  public function gestionar($pagina= false)
    {

    		if ($pagina==false) {
    			$pagina=1;
    		}
    		$numero_filas=5;
		
			$this->_view->setJs(array('js','js_gestianar_banco'));
			$this->_view->setCss(array('ban'));
        	$this->_view->titulo = 'banco';
        	$this->_view->pagina_actual = $pagina;
        	$this->includeModel('paginar');

        	$this->_banco=$this->loadModel('banco');
        	$total_regis=$this->_banco->count_reg();

        	if ($total_regis[0]==0) {

        		$this->_view->renderizar('no_hay_registros');
        		return;
        	}

        	$intervalo=paginar::paginar($total_regis[0],$pagina,"5");
        	
        	$this->_view->intervalo=$intervalo;



        	$this->_view->banco=$this->_banco->listar("5",$intervalo['desde']);

			$this->_view->renderizar('gestionar_banco');
								
	}
	 public function guardar()
    {

		$this->_proveedor=$this->loadModel('banco');	
		$this->_proveedor->cargar($_GET);
		echo $this->_proveedor->guardar();
				
	}	
     public function gestionar2($id)
    {

        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css'));
        $this->_banco=$this->loadModel('banco'); 
        $this->_banco->cargar_bd($id);
        print_r($this->_banco);
        $this->_view->banco=$this->_banco;
         $this->_view->accionn = 'editar';
        $this->_view->renderizar('formulario_banco');
                

    }  
      public function gestionar4($id)
    {

        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css','ban','css_vista_detallar'));
        $this->_banco=$this->loadModel('banco'); 
        $array = $this->_banco->cargar_bd($id);
        $this->includeModel('chequera');
        //$this->_banco->mostrar();
        $this->_banco->listar_chequeras();
        //print_r($this->_banco);
        $this->_view->banco=$this->_banco;
         $this->_view->accionn = 'detallar';
        $this->_view->renderizar('formulario_banco');
                

    }   
    public function editar()
    {

        $this->_banco=$this->loadModel('banco');    
        $this->_banco->cargar($_GET);
        echo $this->_banco->editar($_GET['id']);
                
    }  
     public function gestionar3($id)
    {

        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css'));
        $this->_banco=$this->loadModel('banco'); 
        $this->_view->banco=$this->_banco->cargar_bd($id);
         $this->_view->accionn = 'editar';
        $this->_view->renderizar('formulario_banco');
                

    }  

         public function eliminar()
    {

      
        $this->_banco=$this->loadModel('banco'); 
       $this->_banco->eliminar($_GET['id']);
         
        
                

    }   
    public function eliminar_chequera()
    {

      
        $this->_banco=$this->loadModel('banco');
        $this->includeModel('chequera');
       $this->_banco->eliminar_chequera($_GET['id']);
         
        
                

    }
       public function dato_chequera()
    {

      
        $this->_banco=$this->loadModel('banco');
        $this->includeModel('chequera');
       

       $datos = $this->_banco->traer_chequera($_GET['id']);
        
       echo json_encode($datos);         

    }   

    public function editar_chek()
    {

      
        $this->_banco=$this->loadModel('banco');
        $this->includeModel('chequera');
       
        $this->_banco->editar_chek($_GET);
       

      
    }  
    public function guardar_cheke()
    {

      
        $this->_banco=$this->loadModel('banco');
        $this->includeModel('chequera');
       
        $this->_banco->guardar_chek($_GET);
       

      
    }  
    public function actualisar_estado_cheque()
    {

      
        $cheque = new cheque;

        $cheque->cargar_bd_2($_GET['id']);

        $cheque->editar_estado();

  

       $orden_de_pago=$this->loadModel('orden_de_pago');

       $orden_de_pago->cargar_bd($cheque->_id_orden);

       $orden_de_pago->actializar_stado('cancelada');
       $orden_de_pago->_factura->actualizar_factura('no cancelada');

       print_r($orden_de_pago);

       $chequera= new chequera;

       $chequera->cargar_bd($cheque->_id_chequera);

  

       $banco=$this->loadModel('banco');

       $banco->cargar_bd($chequera->_id_banco);
          print_r($banco); 

       $banco->actualizar_saldo_2($cheque->_cantidad);



      
    }   
     public function depocitar()
    {

      
        $this->_banco=$this->loadModel('banco');
        
       
        $this->_banco->cargar_bd($_GET['id']);
      
       $this->_banco->actualizar_saldo_2($_GET['cantidad']);

      
    } 
      public function traer_datos()
    { 
      
      
        $this->_banco=$this->loadModel('banco');
        
       
       $rs=$this->_banco->listar_todo();
      $array = array();
      for ($i=0; $i <count($rs) ; $i++) { 
        $banco=$this->loadModel('banco');
        $array[]=$banco->cargar_bd($rs[$i]['id_banco']);
      }
       
       echo json_encode($array);

      
    }  




	
}


?>