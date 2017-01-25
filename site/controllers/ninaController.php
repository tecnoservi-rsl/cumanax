<?php


class ninaController extends Controller
{
	
	private $_nina;
    public function __construct() {
        parent::__construct();
  	// $this->_index=$this->loadModel('principal');	
      
    }

    public function index()
    {
  
			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css2'));
        	$this->_view->titulo = 'index';
			$this->_view->renderizar('index');
							
			
	}	
	
}


?>