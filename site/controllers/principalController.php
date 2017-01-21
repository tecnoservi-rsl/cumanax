<?php


class principalController extends Controller
{
	
	private $_index;
    public function __construct() {
        parent::__construct();
  	// $this->_index=$this->loadModel('principal');	
      
    }

    public function index()
    {



    		
		

		

		
       
			
			$this->_view->setJs(array('index','jquery.montage'));
			$this->_view->setCss(array('css','style'));
        		$this->_view->titulo = 'index';
			$this->_view->renderizar('index');
							
			
	}	
	
}


?>