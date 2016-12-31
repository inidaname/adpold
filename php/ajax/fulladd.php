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
    $userauth['hashUser'] = htmlentities(trim($_POST['hashUser']), ENT_QUOTES);
      $stmt = $DB_con->prepare("SELECT * FROM visituser WHERE hashUser='".$userauth['hashUser']."'");
      $stmt->execute();
      $row=$stmt->fetch(PDO::FETCH_ASSOC);
      $count =$stmt->rowCount();

      if ($count != 0) {
        $data['success'] = false;
    } else if ($user->register($registration, 'fulladd')) {
          $data['success'] = true;
      }
      echo json_encode($data);
