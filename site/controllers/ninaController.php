<?php


class ninaController extends Controller
{
	
	private $_nina;
    public function __construct() {
        parent::__construct();
  	 $this->_index=$this->loadModel('principal');	
      
    }

    public function index(){}

    public function individual($id)
    {
  
			
			$this->_view->setJs(array('index'));
			$this->_view->setCss(array('css2'));

			$rs=$this->_index->get_all();

        	for ($i=0; $i < count($rs) ; $i++) { 
        		
        		if($rs[$i]["id_chicas"]==$id):

        			$index=$i;

        		$rs[$i]["fotos"]=$this->_index->get_photo_all($rs[$i]["id_chicas"]);
        		$this->_view->titulo = $rs[$i]['nombre_chicas'];

        		endif;



        	}

        	$this->_view->datos=$rs[$index];

        	
			$this->_view->renderizar('index');
							
			
	}	
	
}

?>