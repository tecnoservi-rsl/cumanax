<?php


class principalController extends Controller
{
	
	private $_index;
    public function __construct() {
        parent::__construct();
  	 $this->_index=$this->loadModel('principal');	
      
    }

    public function index()
    {


			
			$this->_view->setJs(array('principal','jquery.montage'));
			$this->_view->setCss(array('css','style'));
        	$this->_view->titulo = 'inicio';
        	$rs=$this->_index->get_all();


        	for ($i=0; $i < count($rs) ; $i++) { 
        		
        		$rs[$i]["fotos"]=$this->_index->get_photo_all($rs[$i]["id_chicas"]);
        	}

           
        	$this->_view->todos = $rs;
        	
			$this->_view->renderizar('index');
							
			
	}

	    public function tipo($muestra)
    {


    	if($muestra==false){

            $this->redireccionar('principal');

        } 

       
			
			$this->_view->setJs(array('index','jquery.montage'));
			$this->_view->setCss(array('css','style'));
        		$this->_view->titulo = $muestra;

        		$this->_view->busqueda_tipo=$muestra;


        	$rs=$this->_index->get_all_tipo(ucwords($muestra));

        	for ($i=0; $i < count($rs) ; $i++) { 
        		
        		$rs[$i]["fotos"]=$this->_index->get_photo_all($rs[$i]["id_chicas"]);
        	}

        	$this->_view->todos = $rs;
			$this->_view->renderizar('genero');
							
			
	}		
	
}


?>