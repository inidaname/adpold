<?php
  require_once '../config.php';
  if (!empty($_POST)) {
      $registration = array(
      'firstname'   => htmlentities($_POST['firstname'], ENT_QUOTES),
      'lastname'    => htmlentities($_POST['lastname'], ENT_QUOTES),
      'gender'      => htmlentities($_POST['gender'], ENT_QUOTES),
      'whatsapp'    => htmlentities($_POST['whatsapp'], ENT_QUOTES),
      'dateofbirth' => htmlentities($_POST['dateofbirth'], ENT_QUOTES),
      'email'       => htmlentities($_POST['email'], ENT_QUOTES),
      'phone'       => htmlentities($_POST['phone'], ENT_QUOTES),
      'picture'     => htmlentities($_POST['picture'], ENT_QUOTES),
      'hashUser'    => htmlentities($_POST['hashUser'], ENT_QUOTES)
    );
    if ($registration['hashUser'] == 'New') {
      $registration['hashUser'] = md5($registration['phone'].$registration['firstname'].microtime());
    }

    $sstmt = $DB_con->prepare("SELECT * FROM fullpro WHERE phone='".$registration['phone']."' OR email='" . $registration['email'] . "'");
    $sstmt->execute();
    $srow = $sstmt->fetch(PDO::FETCH_ASSOC);
    $scount = $sstmt->rowCount();

    $tstmt = $DB_con->prepare("SELECT * FROM fullpro WHERE phone='".$registration['whatsapp']."' OR whatsapp='" . $registration['phone'] . "' OR whatsapp='" . $registration['whatsapp'] . "'");
    $tstmt->execute();
    $trow = $tstmt->fetch(PDO::FETCH_ASSOC);
    $tcount = $tstmt->rowCount();

    if ($scount !== 0 || $tcount !== 0) {
      $data['success'] = false;
      $data['userdatas'] = $srow;
    } else {
      $user->register($registration, 'fullpro');
      $data['success'] = true;
      $data['message'] = 'Thank You';
      $data['hashUser'] = $registration['hashUser'];
    }


      echo json_encode($data);
  }
