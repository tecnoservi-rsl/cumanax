<?php

class principalModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function get_all(){



$sql="SELECT DISTINCT chicas.*, agencia.nombre_agencia FROM `chicas`,`agencia` where chicas.id_agencia=agencia.id_agencia ORDER BY `id_chicas` DESC limit 0,30 ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

public function get_photo_all($id){


$sql="select * from fotos_chicas where id_chicas='$id'";

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


}

?>
