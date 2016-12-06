<?php


class faceblockedController extends Controller
{
	
	private $faceblocked;
	
	
    public function __construct() {
        parent::__construct();
      //$this->faceblocked=$this->loadModel('faceblocked');
		
    }

    public function index()
    {
			$this->_view->setJs(array('js'));
			$this->_view->setCss(array('css'));
        	$this->_view->titulo = 'bienvenido';
			$this->_view->renderizar('index');		
	}





}


?>