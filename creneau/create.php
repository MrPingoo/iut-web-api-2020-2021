<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// get database connection
include_once '../config/database.php';

// instantiate product object
include_once '../objects/creneau.php';
include_once '../objects/salle.php';

$data = json_decode(file_get_contents("php://input"), true);

$globalError = true;

$database = new Database();
$db = $database->getConnection();

$creneau = new Creneau($db);
$salle = new Salle($db);
$salle = $salle->readByName($data['salle']);

if (!$salle) {
    $globalError = false;
}

$creneau->salle_id = $salle;
$creneau->begin = $data['begin'];
$creneau->end = $data['end'];
$creneau->nb = $data['nb'];

if($globalError && $creneau->create()){

    // set response code - 201 created
    http_response_code(201);

    // tell the user
    echo json_encode(array("message" => "Creneau was created."));
}

// if unable to create the product, tell the user
else{

    // set response code - 503 service unavailable
    http_response_code(503);

    // tell the user
    echo json_encode(array("message" => "Unable to create creneau."));
}

die();
?>