<?php
class Matiere{

    // database connection and table name
    private $conn;
    private $table_name = "matiere";

    // object properties
    public $id;
    public $name;
    public $deleted_at = null;
    public $is_enable = 1;


    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    // create product
    function create(){

        // query to insert record
        $query = "INSERT INTO
                " . $this->table_name . "
            SET
                is_enable=:is_enable,
                deleted_at=:deleted_at,
                name=:name
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":name", $this->name);
        $stmt->bindParam(":deleted_at", $this->deleted_at);
        $stmt->bindParam(":is_enable", $this->is_enable);

        // execute query
        if($stmt->execute()){
            return $this->conn->lastInsertId();
        }

        return false;

    }

    // read products
    function readByName($name){
        // select all query
        $query = "SELECT
                id
            FROM
                " . $this->table_name . " m
            WHERE 
                m.name = '" . $name . "'
            AND
                is_enable = 1 
            AND
                deleted_at is NULL
        ";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt->fetchColumn();
    }
}
?>