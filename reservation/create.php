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
include_once '../objects/reservation.php';
include_once '../objects/creneau.php';

$data = json_decode(file_get_contents("php://input"), true);

$globalError = true;

$database = new Database();
$db = $database->getConnection();

// Check creneau
$reservation = new Reservation($db);
$creneau = new Creneau($db);

$creneau->find($data['creneau']);

if($creneau->nb <= $reservation->countByCreneau($data['creneau'])['nb']){

    // set response code - 201 created
    http_response_code(503);

    // tell the user
    echo json_encode(array("message" => "Créneau complet."));

    exit();
}


$reservation->student = $data['student'];
$reservation->creneau = $data['creneau'];

if($reservation->create()){

    // set response code - 201 created
    http_response_code(201);

    // tell the user
    echo json_encode(array("message" => "Reservation was created."));
} else{

    // set response code - 503 service unavailable
    http_response_code(503);

    // tell the user
    echo json_encode(array("message" => "Unable to create creneau."));
}
?>