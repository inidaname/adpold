<?php
  require_once '../config.php';

      $registration = array(
      'stateoforigin'   => htmlentities($_POST['stateoforigin'], ENT_QUOTES),
      'lgarea'    => htmlentities($_POST['lgarea'], ENT_QUOTES),
      'wardarea'      => htmlentities($_POST['wardarea'], ENT_QUOTES),
      'countryofres' => htmlentities($_POST['countryofres'], ENT_QUOTES),
      'addressOfRes'       => htmlentities($_POST['addressOfRes'], ENT_QUOTES),
      'hashUser'       => htmlentities($_POST['hashUser'], ENT_QUOTES)
    );
      if ($user->register($registration, 'fulladd')) {
          $data['success'] = true;
          $data['message'] = 'Thank You';
      } else {
          $data['success'] = false;
      }


      echo json_encode($data);
