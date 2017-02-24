<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function get_all(){



 $sql = "SELECT chicas.*,\n"
    . "AVG(votacion.votacion) puntos,\n"
    . "COUNT(votacion.id_votacion) as nro_votos ,\n"
    . "agencia.nombre_agencia\n"
    . "FROM\n"
    . "chicas \n"
    . "LEFT JOIN votacion on chicas.id_chicas=votacion.id_chica and week(votacion.fecha) = week(CURRENT_DATE)\n"
    . "LEFT JOIN agencia on agencia.id_agencia= chicas.id_agencia, pagos\n"
    . "where pagos.id_chicas = chicas.id_chicas and pagos.fecha_vencimiento > CURDATE()\n"
    . "GROUP BY chicas.id_chicas\n"
    . "ORDER BY nro_votos DESC \n"
    . "limit 0,30";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}
public function get_all_tipo($tipo){


 $sql = "SELECT chicas.*,\n"
    . "AVG(votacion.votacion) puntos,\n"
    . "COUNT(votacion.id_votacion) as nro_votos ,\n"
    . "agencia.nombre_agencia\n"
    . "FROM\n"
    . "chicas \n"
    . "LEFT JOIN votacion on chicas.id_chicas=votacion.id_chica and week(votacion.fecha) = week(CURRENT_DATE)\n"
    . "LEFT JOIN agencia on agencia.id_agencia= chicas.id_agencia\n"
    . "RIGHT JOIN pagos on pagos.id_chicas = chicas.id_chicas and pagos.fecha_vencimiento > CURDATE()\n"
    . "where chicas.tipo = '$tipo'  \n"
    . "GROUP BY chicas.id_chicas\n"
    . "ORDER BY nro_votos DESC \n"
    . "limit 0,30";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

public function get_photo_all($id){


$sql="select * from fotos_chicas where id_chicas='$id' order by perfil DESC";

$datos = $this->_db->query($sql);
        
        return $datos->fetchall();

}

public function validar_voto($ip,$id_chica){


$sql="select * from votacion where ip='$ip' and id_chica=$id_chica and fecha=CURDATE()";

$datos = $this->_db->query($sql);
        
        if ($datos->fetchall()){
        	return 0;
        }
        else{
        	return 1;
        }

}

public function votacion($valor,$id,$ip){


$sql="insert into votacion values('',$id,$valor,'$ip', CURDATE())";

$datos = $this->_db->query($sql);
        
        return $datos->fetchall();

}

public function promedio_chica($id){


$sql="select AVG(votacion) as rating from votacion where id_chica='$id'";

$datos = $this->_db->query($sql);
        
       return $datos->fetch();
        	
       

}

public function buscar_chicas($nombre){
   
$sql="select * from chicas,pagos 
WHERE chicas.nombre_chicas 
like '$nombre%' and chicas.id_chicas=pagos.id_chicas";
$datos = $this->_db->query($sql);
return $datos->fetchall();
}

public function eliminar_chicas($id_chica){
$sql="delete from chicas where id_chicas='$id_chica'";
$this->_db->query($sql);
return 0;
}

public function pago_chicas($id_chica,$meses){
$sql="update pagos set fecha_pago=CURDATE(), fecha_vencimiento=DATE_ADD(CURDATE(), interval $meses month) where id_chicas='$id_chica'";
$this->_db->query($sql);
return 0;  
}

public function fotos_chicas($id_chica){
    $sql="select * from fotos_chicas where id_chicas=$id_chica";
    $datos = $this->_db->query($sql);
    return $datos->fetchall();
}

public function foto_perfil($id_foto,$id_chica){
    $sql="update fotos_chicas set perfil=0 where id_foto!='$id_foto' and id_chicas='$id_chica'";
    $this->_db->query($sql);
    $sql="update fotos_chicas set perfil=1 where id_foto='$id_foto'";
    $this->_db->query($sql);
    return 0; 
}

}?>
