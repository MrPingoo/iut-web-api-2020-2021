<?php
class Salle{

    // database connection and table name
    private $conn;
    private $table_name = "salle";

    // object properties
    public $id;
    public $name;


    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    // read products
    function readByName($name){
        // select all query
        $query = "SELECT
                id
            FROM
                " . $this->table_name . " s
            WHERE 
                s.name = '" . $name . "'";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt->fetchColumn();
    }
}
?>