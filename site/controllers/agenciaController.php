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
        
        if ($_GET["bn"]==1) {
        
         $this->_view->agencias=$this->_agencia->get_only_name($_GET["agencia_name"]);

        }else{

          $this->_view->agencias=$this->_agencia->get_all();
        }


      


        $this->_view->renderizar('index');
     
}

    public function auto_completado()
{
        
    
      


       echo json_encode( $this->_agencia->get_all());
     
}


}

?>
