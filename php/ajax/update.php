<?php
require_once '../config.php';
function escape_data(&$value, $key) {
  $value = htmlentities($value, ENT_QUOTES);
}

$genderaccept = array('Male', 'Female', 'M', 'F', 'f', 'm', 'male', 'female');

$re = '/^(?:[0-9]|\+?[0-9])(?!.*-.*-)(?:\d(?:-)?){9,15}$/m';

  if (isset($_POST)){
    array_walk_recursive($_POST, 'escape_data');
    if ($_POST['stringname'] == 'phone' && preg_match($re, $_POST['stringvals']) == false) {
        $data['success'] = false;
        $data['message'] = 'Please provide a valid phone number';
  } elseif ( $_POST['stringname'] == 'whatsapp' && preg_match($re, $_POST['stringvals']) == false) {
    $data['success'] = false;
    $data['message'] = 'Please provide a valid phone number';
  } elseif ($_POST['stringname'] == 'email' && filter_var($_POST['stringvals'], FILTER_VALIDATE_EMAIL) == false) {
        $data['success'] = false;
        $data['message'] = 'Please provide a valid Email';
  } elseif ($_POST['stringname'] == 'gender' && !in_array($_POST['stringvals'], $genderaccept)) {
    $data['success'] = false;
    $data['message'] = 'Please indicate Male or Female';
  } else {

    $stringname = $_POST['stringname'];
    $stringvals = $_POST['stringvals'];
    $hashUser = $_POST['hashUser'];

    $updatethem = array(
      $stringname => $stringvals,
    );


    // now setting up to update;
    $user->updatethem($updatethem, $hashUser, $_POST['tableUP']);
    $data['success'] = true;

  }
  echo json_encode($data);
}
