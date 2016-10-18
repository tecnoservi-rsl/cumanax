<?php

class ejercicioModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    


public function reconocer_numeros($nivel){
	$numero=rand(1, 10);
	$ramdom=rand(1,2);
	if($nivel['nivel']!=3){
		
	$sql="select * from img where valor='".$numero."' and  dificultad='".$nivel['nivel']."' and tipo='".$nivel['operacion']."'";}
	else{
		
		if ($ramdom==1) {
			$orden="order by id_imagen ASC";
		}
		else{
			$orden="order by id_imagen DESC";
		}
		 $sql="select * from img where valor='".$numero."' and tipo='".$nivel['operacion']."' ".$orden."";
	}
	$datos2 = $this->_db->query($sql);
	$arreglo = $datos2->fetch();
	$opcion1=(int)$arreglo['valor'];
	$opcion2=(int)$arreglo['valor'];
	$valor=(int)$arreglo['valor'];

	while ($opcion1==$valor) {
		$opcion1=rand(0, 9);
	}
	while ($opcion2==$valor) {
		$opcion2=rand(0, 9);
		if($opcion2==$opcion1){
			$opcion2=rand(0, 9);
		}
	}
	$array=array();
	$array[0]=$arreglo;
	$array[1]['valor']=$opcion1;
	$array[2]['valor']=$opcion2;

shuffle($array);

	return $array;
}

public function sumar_numeros($nivel){
	
	$ramdom=rand(1,2);
	$sql="select * from img where  dificultad='".$nivel['nivel']."' and tipo='".$nivel['operacion']."'";
	$datos2 = $this->_db->query($sql);
	$arreglo = $datos2->fetchall();
	$contador=count($arreglo);
	$numero=rand(0, $contador);
	$opcion1=(int)$arreglo[$numero]['valor'];
	$opcion2=(int)$arreglo[$numero]['valor'];
	$valor=(int)$arreglo[$numero]['valor'];

	while ($opcion1==$valor) {
		$opcion1=rand(1, 20);
	}
	while ($opcion2==$valor) {
		$opcion2=rand(1, 20);
		if($opcion2==$opcion1){
			$opcion2=rand(1, 20);
		}
	}
	$array=array();
	$array[0]=$arreglo[$numero];
	$array[1]['valor']=$opcion1;
	$array[2]['valor']=$opcion2;

shuffle($array);

	return $array;
}

public function resta_numeros($nivel){
	
	$ramdom=rand(1,2);
	$sql="select * from img where  dificultad='".$nivel['nivel']."' and tipo='".$nivel['operacion']."'";
	$datos2 = $this->_db->query($sql);
	$arreglo = $datos2->fetchall();
	$contador=count($arreglo);
	$numero=rand(0, $contador);
	$opcion1=(int)$arreglo[$numero]['valor'];
	$opcion2=(int)$arreglo[$numero]['valor'];
	$valor=(int)$arreglo[$numero]['valor'];

	while ($opcion1==$valor) {
		$opcion1=rand(1, 20);
	}
	while ($opcion2==$valor) {
		$opcion2=rand(1, 20);
		if($opcion2==$opcion1){
			$opcion2=rand(1, 20);
		}
	}
	$array=array();
	$array[0]=$arreglo[$numero];
	$array[1]['valor']=$opcion1;
	$array[2]['valor']=$opcion2;

shuffle($array);

	return $array;
}

public function guardar_avance($datos){



        $sql="insert into avances values ('','".session::get('id_usuario')."','".$datos['operacion']."','".$datos['level']."','".$datos['vidas']."','".$datos['puntos']."',CURDATE(),CURTIME())";
        $this->_db->query($sql);


}



}

?>
