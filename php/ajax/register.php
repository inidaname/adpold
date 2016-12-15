<?php
require_once '../config.php';
  if ($_POST) {
    $registration = array(
      'fullname' => htmlentities($_POST['fullname'], ENT_QUOTES),
      'contactDetail' => htmlentities($_POST['contactDetail'], ENT_QUOTES),
      'hashUser'  => md5(htmlentities($_POST['fullname'], ENT_QUOTES) . htmlentities($_POST['contactDetail'], ENT_QUOTES) . microtime())
    );

    if (filter_var($registration['contactDetail'], FILTER_VALIDATE_EMAIL) ) {
      $registration['contactType'] = 'Email';
    } else {
      $registration['contactType'] = 'Phone';
    }

    if ($user->register($registration, 'visitUser')) {
      $data['success'] = true;
      $data['message'] = 'Thank You';
    } else {
      $data['success'] = error;
    }

    echo json_encode($data);

  }
?>
