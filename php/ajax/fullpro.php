<?php
  require_once '../config.php';
  if (!empty($_POST)) {
      $registration = array(
      'firstname'   => htmlentities($_POST['firstname'], ENT_QUOTES),
      'lastname'    => htmlentities($_POST['lastname'], ENT_QUOTES),
      'gender'      => htmlentities($_POST['gender'], ENT_QUOTES),
      'dateofbirth' => htmlentities($_POST['dateofbirth'], ENT_QUOTES),
      'email'       => htmlentities($_POST['email'], ENT_QUOTES),
      'phone'       => htmlentities($_POST['phone'], ENT_QUOTES),
      'picture'     => htmlentities($_POST['picture'], ENT_QUOTES),
      'hashUser'    => htmlentities($_POST['hashUser'], ENT_QUOTES)
    );
      if ($user->register($registration, 'fullpro')) {
          $data['success'] = true;
          $data['message'] = 'Thank You';
      } else {
          $data['success'] = false;
      }


      echo json_encode($data);
  }
