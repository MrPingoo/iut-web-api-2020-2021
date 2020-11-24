<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// database connection will be here

// include database and object files
include_once '../config/database.php';
include_once '../objects/user.php';

// instantiate database and product object
$database = new Database();
$db = $database->getConnection();

// initialize object
$user = new User($db);

// read products will be here
// query products
$limit = (isset($_GET['limit']) ? $_GET['limit'] : null);
$offset = (isset($_GET['offset']) ? $_GET['offset'] : null);
if (!empty($limit) && !empty($offset)) {
    $stmt = $user->list($limit, $offset);
} else {
    $stmt = $user->list();
}
$num = $stmt->rowCount();

// check if more than 0 record found
if($num>0){

    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // set response code - 200 OK
    http_response_code(200);

    // show products data in json format
    echo json_encode($users);
}else{

    // set response code - 404 Not found
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "No user found.")
    );
}
