<?php
class Student{

    // database connection and table name
    private $conn;
    private $table_name = "student";

    // object properties
    public $id;
    public $civility;
    public $firstname;
    public $lastname;
    public $lvl = 0;
    public $phone;
    public $email;
    public $deleted_at = null;
    public $user_id = null;

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
                civility=:civility,
                firstname=:firstname,
                lastname=:lastname,
                lvl=:lvl,
                phone=:phone,
                email=:email,
                deleted_at=:deleted_at,
                user_id=:user_id
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":civility", $this->civility);
        $stmt->bindParam(":firstname", $this->firstname);
        $stmt->bindParam(":lastname", $this->lastname);
        $stmt->bindParam(":lvl", $this->lvl);
        $stmt->bindParam(":phone", $this->phone);
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":deleted_at", $this->deleted_at);
        $stmt->bindParam(":user_id", $this->user_id);

        // execute query
        if($stmt->execute()){
            return true;
        }

        return false;

    }

}
?>