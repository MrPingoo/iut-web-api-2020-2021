<?php
// BDD

function thousandsCurrencyFormat(int $number): string
{
    $suffixByNumber = function () use ($number) {
        if ($number < 1000) {
            return sprintf('%d', $number);
        }

        if ($number < 1000000) {
            return sprintf('%d%s', floor($number / 1000), 'K');
        }

        if ($number >= 1000000 && $number < 1000000000) {
            return sprintf('%d%s', floor($number / 1000000), 'M');
        }

        if ($number >= 1000000000 && $number < 1000000000000) {
            return sprintf('%d%s', floor($number / 1000000000), 'G');
        }

        return sprintf('%d%s', floor($number / 1000000000000), 'T');
    };

    return $suffixByNumber();
}

$channel_ID = 'UC84Q_bXTc6hleDTUWMKbOdw';
$YOUR_API_KEY = 'AIzaSyCAo5GwixryVYIcOjIc5a7MX_oEBfhwwYE';
$JSON = file_get_contents("https://www.googleapis.com/youtube/v3/channels?part=statistics&id={$channel_ID}&key={$YOUR_API_KEY}");
$JSON_Data = json_decode($JSON, true);
$views = thousandsCurrencyFormat($JSON_Data['items'][0]['statistics']['viewCount']);
$videoCount = thousandsCurrencyFormat($JSON_Data['items'][0]['statistics']['videoCount']);

var_dump($views);
var_dump($JSON_Data);
var_dump($videoCount);

die();

class DB {
    private $conn;

    public function __construct()
    {
        $this->conn = new PDO("mysql:host=localhost:8889;dbname=api", "root", "root");;
    }

    /**
     * @return PDO
     */
    public function getConn(): PDO
    {
        return $this->conn;
    }

    /**
     * @param PDO $conn
     */
    public function setConn(PDO $conn): void
    {
        $this->conn = $conn;
    }

    public function getProducts(int $max) :Array {
        // select all query
        $query = "SELECT * FROM products ORDER BY created DESC LIMIT $max";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();

        return $stmt->fetchALL(PDO::FETCH_ASSOC);
    }
}

class Product {
    private $conn;

    public $name;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function save() {
        // query to insert record
        $query = "INSERT INTO Products
            SET
                name=:name, created=:created";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->name=htmlspecialchars(strip_tags($this->name));

        // bind values
        $stmt->bindParam(":name", $this->name);
        $date = new \DateTime();
        $tmp =  $date->format('Y-m-d');
        $stmt->bindParam(":created",$tmp);

        // execute query
        $stmt->execute();
        var_dump($stmt->errorInfo()); die();

        return false;
    }
}

$db = new DB();
$product = new Product($db->getConn());
$product->name = 'Mon produit';
$res = $product->save();
var_dump($res);