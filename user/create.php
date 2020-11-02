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
include_once '../objects/user.php';
include_once '../objects/student.php';

$globalError = true;

$database = new Database();
$db = $database->getConnection();

$user = new User($db);

// get posted data
$data = json_decode(file_get_contents("php://input"), true);

// make sure data is not empty
if(
    !empty($data['email']) &&
    !empty($data['roles']) &&
    !empty($data['password']) &&
    !empty($data['firstname']) &&
    !empty($data['lastname'])
){

    // set product property values

    $user->email = $data['email'];
    $user->roles = $data['roles'];
    $user->password = $data['password'];
    $user->phone = $data['phone'];
    $user->payment_method = $data['payment_method'];
    $user->address = $data['address'];
    $user->zipcode = $data['zipcode'];
    $user->city = $data['city'];
    $user->civility = $data['civility'];
    $user->username = $data['username'];
    $user->firstname = $data['firstname'];
    $user->lastname = $data['lastname'];
    $user->deleted_at = null;
    $user->token = null;

    $user_id = $user->create();
    if ($user_id != false) {
        $globalError = false;

        foreach ($data['students'] as $s) {
            if (!$globalError) {
                $student = new Student($db);
                $student->civility = $s['civility'];
                $student->firstname = $s['firstname'];
                $student->lastname = $s['lastname'];
                $student->lvl = $s['lvl'];
                $student->phone = $s['phone'];
                $student->email = $s['email'];
                $student->deleted_at = null;
                $student->user_id = $user_id;

                if ($student->create()) {
                    $globalError = false;
                } else {
                    $globalError = true;
                }
            }
        }
    }

    if(!$globalError){

        // set response code - 201 created
        http_response_code(201);

        // tell the user
        echo json_encode(array("message" => "User was created."));
    }

    // if unable to create the product, tell the user
    else{

        // set response code - 503 service unavailable
        http_response_code(503);

        // tell the user
        echo json_encode(array("message" => "Unable to create students and user."));
    }
}

// tell the user data is incomplete
else{

    // set response code - 400 bad request
    http_response_code(400);

    // tell the user
    echo json_encode(array("message" => "Unable to create user. Data is incomplete."));
}
?>