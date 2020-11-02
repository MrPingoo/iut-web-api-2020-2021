<?php
class User{

    // database connection and table name
    private $conn;
    private $table_name = "user";

    // object properties
    public $id;
    public $email;
    public $roles;
    public $password;
    public $phone;
    public $payment_method = 'CB';
    public $address;
    public $zipcode;
    public $city;
    public $civility;
    public $username;
    public $firstname;
    public $lastname;
    public $deleted_at = null;
    public $token = null;



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
                email=:email,
                roles=:roles,
                password=:password,
                phone=:phone,
                payment_method=:payment_method,
                address=:address,
                zipcode=:zipcode,
                city=:city,
                civility=:civility,
                username=:username,
                firstname=:firstname,
                lastname=:lastname,
                deleted_at=:deleted_at,
                token=:token
                ";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // bind values
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":password", $this->password);
        $stmt->bindParam(":phone", $this->phone);
        $stmt->bindParam(":payment_method", $this->payment_method);
        $stmt->bindParam(":address", $this->address);
        $stmt->bindParam(":zipcode", $this->zipcode);
        $stmt->bindParam(":city", $this->city);
        $stmt->bindParam(":civility", $this->civility);
        $stmt->bindParam(":username", $this->username);
        $stmt->bindParam(":firstname", $this->firstname);
        $stmt->bindParam(":lastname", $this->lastname);
        $stmt->bindParam(":deleted_at", $this->deleted_at);
        $stmt->bindParam(":token", $this->token);
        $data = json_encode($this->roles);
        $stmt->bindParam(":roles", $data);

        // execute query
        if($stmt->execute()){
            return $this->conn->lastInsertId();
        }

        return false;

    }
    
}
?>