<?php
class StudentSubscription {

    // database connection and table name
    private $conn;
    private $table_name = "student_subscription";

    // object properties
    public $id;
    public $student_id;
    public $subscription_id = 1;
    public $nb = 4;
    public $begin;
    public $end;

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
                student_id=:student_id,
                subscription_id=:subscription_id,
                nb=:nb,
                begin=:begin,
                end=:end
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":student_id", $this->student_id);
        $stmt->bindParam(":subscription_id", $this->subscription_id);
        $stmt->bindParam(":nb", $this->nb);
        $stmt->bindParam(":begin", $this->begin);
        $stmt->bindParam(":end", $this->end);

        // execute query
        if($stmt->execute()){
            return true;
        }

        return false;

    }

    // read products
    function findById($id){
        // select all query
        $query = "SELECT
                *
            FROM
                " . $this->table_name . " s
            WHERE 
                s.id = '" . $id . "'";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt->fetch();
    }
}
?>