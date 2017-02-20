<?php

class inaModel extends Model
{
    public function __construct() {
        parent::__construct();
    }
    


   public function fecha()
    {
        
        $sql="SELECT fecha FROM switch ";
         $rs =$this->_db->query($sql);
         return $rs->fetch();
    } 





}

?>
