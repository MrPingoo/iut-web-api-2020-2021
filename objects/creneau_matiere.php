<?php
class CreneauMatiere{

    // database connection and table name
    private $conn;
    private $table_name = "creneau_matiere";

    // object properties
    public $id;
    public $lvl;
    public $matiere_id;
    public $creneau_id;


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
                lvl=:lvl,
                matiere_id=:matiere_id,
                creneau_id=:creneau_id
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":lvl", $this->lvl);
        $stmt->bindParam(":matiere_id", $this->matiere_id);
        $stmt->bindParam(":creneau_id", $this->creneau_id);

        // execute query
        if($stmt->execute()){
            return $this->conn->lastInsertId();
        }

        return false;

    }
}
?>