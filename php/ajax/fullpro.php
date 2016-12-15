<?php
  require_once '../config.php';
  if ($_POST) {
    $registration = array(
      'firstname' => $_POST['firstname'],
      'lastname'  => $_POST['lastname'],
      'gender'    => $_POST['gender'],
      'dateofbirth' => $_POST['dateofbirth'],
      'picture'  => $_POST['passport'],
    );

    array_walk_recursive($registration, function (&$value) {
        $value = htmlentities($value);
    });

    echo json_encode(var_dump($registration));

  }

?>
