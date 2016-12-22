<?php
  require_once '../config.php';
  if (!empty($_POST)) {
      $registration = array(
      'firstname'   => $_POST['firstname'],
      'lastname'    => $_POST['lastname'],
      'gender'      => $_POST['gender'],
      'dateofbirth' => $_POST['dateofbirth'],
      'email'       => $_POST['email'],
      'phone'       => $_POST['phone'],
      'picture'     => $_POST['picture'],
      'hashUser'    => $_POST['hashUser']
    );
      if ($user->register($registration, 'fullpro')) {
          $data['success'] = true;
          $data['message'] = 'Thank You';
      } else {
          $data['success'] = false;
      }


      echo json_encode($data);
  }
