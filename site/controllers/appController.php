<?php


class appController extends Controller
{
	
	private $app;
	
	
    public function __construct() {

        Session::acceso();

        parent::__construct();
      $this->app=$this->loadModel('app');
		
    }

    public function index()
    {

 
			$this->_view->setJs(array('js','jscolor'));
			$this->_view->setCss(array('css'));
        	$this->_view->titulo = 'menus';

        	$menu=$this->app->traer_menus();
        	$role=$this->app->traer_roles();
        	$matris = Array();
        	for ($i=0; $i < count($menu) ; $i++) { 

        		for ($y=0; $y < count($role); $y++) { 

        					$vn=$this->app->traer_permisos($menu[$i]['id_menu'],$role[$y]['id_role']);
        	        		if ($vn=='') {
        	        			$matris[$i][$y]['permiso']='0';
        	        		}else{
        	        		$matris[$i][$y]=$this->app->traer_permisos($menu[$i]['id_menu'],$role[$y]['id_role']);
	
        	        		}
        	        		
        	        		}
        		
        		

        	

        	}




             $this->_view->bloqueo=$this->app->bloqueo();
            $this->_view->bloqueo_datos=$this->app->bloqueo_datos();
        	$this->_view->cont=$this->app->all_cont();
            $this->_view->logs=$this->app->all_logs();
        	$this->_view->menus=$menu;
			$this->_view->rol=$role;
			$this->_view->matris=$matris;
			$this->_view->renderizar('index');		
	}


  
    function permisos_ch(){


        $this->app->permisos_ch($_GET['menu'],$_GET['rol'],$_GET['estado']);

    }

    function buscar_chicas(){
        $this->chicas=$this->loadModel('principal');
       echo json_encode( $this->chicas->buscar_chicas($_POST['nombre_chica']));
    }

    function eliminar_chicas(){
        $this->chicas=$this->loadModel('principal');
        echo json_encode($this->chicas->eliminar_chicas($_POST['id_chica']));
    }

    function pago_chicas(){
       $this->chicas=$this->loadModel('principal');
       echo json_encode($this->chicas->pago_chicas($_POST['id_chica'],$_POST['meses']));
    }

    function fotos_chicas(){
        $this->chicas=$this->loadModel('principal');
        echo json_encode($this->chicas->fotos_chicas($_POST['id_chica']));
    }

    function foto_perfil(){
        $this->chicas=$this->loadModel('principal');
        echo json_encode($this->chicas->foto_perfil($_POST['id_foto'],$_POST['id_chica']));
    }
    
    function updonw(){
     $objeto=$this->loadModel('app');
       echo print_r($_POST);
       if ($_POST['accion']==0) {
            $objeto->gf($_POST);
       }else{
            $objeto->gf();
       }
    }
}


?>