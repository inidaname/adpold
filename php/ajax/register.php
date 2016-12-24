<?php
require_once '../config.php';
  if ($_POST) {
      $registration = array(
      'fullname' => htmlentities($_POST['fullname'], ENT_QUOTES),
      'contactDetail' => htmlentities($_POST['contactDetail'], ENT_QUOTES),
      'hashUser'  => md5(htmlentities($_POST['fullname'], ENT_QUOTES) . htmlentities($_POST['contactDetail'], ENT_QUOTES) . microtime())
    );

      if (filter_var($registration['contactDetail'], FILTER_VALIDATE_EMAIL)) {
          $registration['contactType'] = 'Email';
      } else {
          $registration['contactType'] = 'Phone';
      }
      $sstmt = $DB_con->prepare("SELECT * FROM visituser WHERE contactDetail='".$registration['contactDetail']."'");
      $sstmt->execute();
      $srow = $sstmt->fetch(PDO::FETCH_ASSOC);
      $scount = $sstmt->rowCount();

      $lstmt = $DB_con->prepare("SELECT * FROM fullpro WHERE phone='".$registration['contactDetail']."' OR whatsapp='".$registration['contactDetail']."' OR email='".$registration['contactDetail']."'");
      $lstmt->execute();
      $lrow = $lstmt->fetch(PDO::FETCH_ASSOC);
      $lcount = $lstmt->rowCount();

      if ($scount !== 0 || $lcount !== 0) {
        $data['success'] = false;
      } else if ($user->register($registration, 'visituser')) {
        $data['success'] = true;
        $data['message'] = 'Thank You';
        $data['hashUser'] = $registration['hashUser'];
      }
      echo json_encode($data);
  }
