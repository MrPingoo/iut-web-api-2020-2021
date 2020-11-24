<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// database connection will be here

// include database and object files
include_once '../config/database.php';
include_once '../objects/creneau.php';
include_once '../objects/student.php';

// instantiate database and product object
$database = new Database();
$db = $database->getConnection();

// initialize object
$student = new Student($db);
$creneau = new Creneau($db);

$data = json_decode(file_get_contents("php://input"), true);

$student = $student->findById($data['student']);

$stmt = $creneau->search($data['matieres'], $student['lvl'], $data['begin'], $data['end']);

$num = $stmt->rowCount();

// check if more than 0 record found
if($num>0){


    // les créneaux dont la date de début et de fin est comprise entre deux dates
    // récupérer le niveau de mon élève
    // récupération des créneaux pour matières listées et dont le niveau de la matière est >= au niveau de mon élève

    $creneaux = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // set response code - 200 OK
    http_response_code(200);

    // show products data in json format
    echo json_encode($creneaux);
}else{

    // set response code - 404 Not found
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "No products found.")
    );
}
