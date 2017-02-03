<?php

class agenciaController extends Controller
{
    private $_agencia;
    
    public function __construct() {
        parent::__construct();
        
        $this->_agencia = $this->loadModel('agencia');
    }
    
    public function index()
{
		
       
        $this->_view->titulo = 'agencia';
      	$this->_view->setJs(array('index'));
       $this->_view->setCss(array('css'));
        $this->_view->agencias=$this->_agencia->get_all();


        $this->_view->renderizar('index');
     
}




}

?>
