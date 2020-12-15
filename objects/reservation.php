<?php
class Reservation{

    // database connection and table name
    private $conn;
    private $table_name = "reservation";

    // object properties
    public $id;
    public $student;
    public $creneau;

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
                student_id=:student,
                creneau_id=:creneau
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":student", $this->student);
        $stmt->bindParam(":creneau", $this->creneau);

        // execute query
        if($stmt->execute()){
            return true;
        }

        return false;

    }

    function countByCreneau($id) {
        $query = 'SELECT count(*) as nb from reservation WHERE creneau_id = ' . $id;

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt->fetch();
    }
}
?>