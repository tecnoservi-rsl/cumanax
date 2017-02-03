<?php

class agenciaModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    
public function get_all(){



$sql="SELECT * FROM `agencia` where 1=1  limit 0,10 ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}

public function get_photo_all($id){


$sql="select * from fotos_agencia where id_agencia='$id'";

$datos = $this->_db->query($sql);
        
        return $datos->fetchall();

}

public function get_only_name($name){



$sql="SELECT * FROM `agencia` where  nombre_agencia like '%$name%' ";

$datos = $this->_db->query($sql);
        
return $datos->fetchall();

}


public function get_count_camp($id,$tipo){



$sql="SELECT count(id_chicas) as cantidad FROM agencia,chicas where  agencia.id_agencia = chicas.id_agencia and chicas.tipo='$tipo' and agencia.id_agencia = '$id'  ";

$datos = $this->_db->query($sql);
        
return $datos->fetch();

}







}

?>
