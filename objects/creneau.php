<?php
class Creneau{

    // database connection and table name
    private $conn;
    private $table_name = "creneau";

    // object properties
    public $id;


    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    // read products
    function read(){
    }

    // create product
    function create(){
    }
}
?>