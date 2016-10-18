<?php


class proveedorController extends Controller
{
	
	private $_proveedor;

    public function __construct() {
        parent::__construct();
  	    $this->_proveedor=$this->loadModel('orden_de_pago');	
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
        	$this->_view->titulo = 'proveedor';
            $this->_view->accionn = 'guardar';
			$this->_view->renderizar('formulario_proveedor');
									
	}	
	  public function gestionar($pagina= false)
    {

    		if ($pagina==false) {
    			$pagina=1;
    		}
    		$numero_filas=10;
		
			$this->_view->setJs(array('js','js_gestianar_proveedor'));
			$this->_view->setCss(array('prov'));
        	$this->_view->titulo = 'proveedor';
        	$this->_view->pagina_actual = $pagina;
        	$this->includeModel('paginar');

        	$this->_proveedor=$this->loadModel('proveedor');
        	$total_regis=$this->_proveedor->count_reg();

        	if ($total_regis[0]==0) {

        		$this->_view->renderizar('no_hay_registros');
        		return;
        	}

        	$intervalo=paginar::paginar($total_regis[0],$pagina,"10");
        	
        	$this->_view->intervalo=$intervalo;



        	$this->_view->proveedores=$this->_proveedor->listar("10",$intervalo['desde']);

			$this->_view->renderizar('gestionar_proveedor');
								
	}
	 public function guardar()
    {

		$this->_proveedor=$this->loadModel('proveedor');	
		$this->_proveedor->cargar($_GET);
		echo $this->_proveedor->guardar();
				
	}	
     public function gestionar2($id)
    {

        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css'));
        $this->_proveedor=$this->loadModel('proveedor'); 
        $this->_proveedor->cargar_bd($id);


        $this->_view->proveedor=$this->_proveedor;
        $this->_view->accionn = 'editar';
        $this->_view->renderizar('formulario_proveedor');
                

    }  
      public function gestionar4($id)
    {
        
        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css','prov','css_vista_detallar'));
        $this->_proveedor=$this->loadModel('proveedor'); 
        $this->_proveedor->cargar_bd($id);
        $this->includeModel('factura');
        $this->_proveedor->listar_facturas();

        $this->_view->proveedor=$this->_proveedor;
         $this->_view->accionn = 'detallar';
        
        //print_r($this->_proveedor);

        $this->_view->renderizar('formulario_proveedor');
        


    }   
    public function editar()
    {

        $this->_proveedor=$this->loadModel('proveedor');    
        $this->_proveedor->cargar($_GET);
        echo $this->_proveedor->editar($_GET['id']);
                
    }  
     public function gestionar3($id)
    {

        $this->_view->setJs(array('js','validad_form'));
        $this->_view->setCss(array('css'));
        $this->_proveedor=$this->loadModel('proveedor'); 
        $this->_view->proveedor=$this->_proveedor->cargar_bd($id);
         $this->_view->accionn = 'editar';
        $this->_view->renderizar('formulario_proveedor');
                

    }  

         public function eliminar()
    {

      
        $this->_proveedor=$this->loadModel('proveedor'); 
       $this->_proveedor->eliminar($_GET['id']);
         
        
                

    }  

     public function dato_factura(){

      
      $this->_proveedor=$this->loadModel('proveedor');
        $this->includeModel('factura');
       

       $datos = $this->_proveedor->traer_factura($_GET['id']);
        
       echo json_encode($datos);  
         
    
                

    }   

   public function editar_factura()
    {

      
        $this->_proveedor=$this->loadModel('proveedor');
        $this->includeModel('factura');
        $this->includeModel('retencion');

        $this->_proveedor->cargar_bd($_GET['id_prov']);
       
        $this->_proveedor->editar_factura($_GET);
       print_r($this->_proveedor);

      
    }  
    public function guardar_factura()
    {

      
        $this->_proveedor=$this->loadModel('proveedor');
        $this->includeModel('factura');
        $this->includeModel('retencion');
       
        $this->_proveedor->guardar_factura($_GET);
       
        print_r($this->_proveedor);
      
    }   
    public function eliminar_factura()
    {

      
        $this->_proveedor=$this->loadModel('proveedor');
        $this->includeModel('factura');
       $this->_proveedor->eliminar_factura($_GET['id']);
         
        
                

    }

    public function buscar_nro_factura()
    {

        $this->includeModel('factura');
        $factura= new factura;

        print_r($factura->buscar_nro($_GET));
         
        
                

    }






	
}


?>