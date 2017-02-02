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




}

?>
