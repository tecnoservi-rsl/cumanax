<?php

class anunciateController extends Controller
{
    private $_aviso;
    
    public function __construct() {
        parent::__construct();
        
        //$this->_aviso = $this->loadModel('aviso');
    }
    
    public function index()
{
			$this->_view->area_l="apagada";
		//$this->_view->area_r="apagada";
       
        $this->_view->titulo = 'CumanaX';
       	//$this->_view->setJs(array('js','validate'));
        $this->_view->setJs(array('index'));
        $this->_view->setCss(array('index'));
        
       
       $this->_view->renderizar('index', 'anunciate');
     
}




}

?>
