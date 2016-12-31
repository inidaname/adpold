<?php
require_once '../config.php';

  if ($_POST) {
    function escape_data(&$value, $key) {
      $value = htmlentities($value, ENT_QUOTES);
    }

    $registration = array(
      'hashUser' => $_POST['hashUser']
    );
    array_walk_recursive($registration, 'escape_data');
    $user->register($registration, 'fulladd');

    $data['success'] = true;
  }
?>
