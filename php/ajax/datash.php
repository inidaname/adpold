<?php
require_once '../config.php';

  // getting from the intial page register
  $userauth['hashUser'] = htmlentities(trim($_POST['hashUser']), ENT_QUOTES);
  $userauth['randomCode'] = htmlentities(trim($_POST['randomCode']), ENT_QUOTES);

    $stmt = $DB_con->prepare("SELECT * FROM fullpro WHERE hashUser='".$userauth['hashUser']."'");
    $stmt->execute();
    $row=$stmt->fetch(PDO::FETCH_ASSOC);
    $count =$stmt->rowCount();

    // getting from the address page register
    $gstmt = $DB_con->prepare("SELECT * FROM fulladd WHERE hashUser='".$userauth['hashUser']."'");
    $gstmt->execute();
    $grow=$gstmt->fetch(PDO::FETCH_ASSOC);
    $gcount =$gstmt->rowCount();


    if ($count == 0 && $gcount == 0) {
      $data['success'] = false;
      $data['message'] = 'both';
    } else {
      if ($count == 0) {
        $data['success'] = true;
        $data['message'] = 'Main';
        $data['userAdd'] = $grow;
      } elseif ($gcount == 0) {
        $data['success'] = true;
        $data['message'] = 'Address';
        $data['userdatas'] = $row;
      } else {
        $data['success'] = true;
        $data['message'] = 'Combined';
        $data['userdatas'] = $row;
        $data['userAdd'] = $grow;
      }
    }

    echo json_encode($data);

?>
