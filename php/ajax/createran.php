<?php
require_once '../config.php';

  $userauth['randomCode'] = htmlentities(trim($_POST['randomCode']), ENT_QUOTES);
  $userauth['hashUser'] = htmlentities(trim($_POST['hashUser']), ENT_QUOTES);

  $rstmt = $DB_con->prepare("SELECT * FROM randomCode WHERE randomCode='".$userauth['randomCode']."'");
  $rstmt->execute();
  $rrow = $rstmt->fetch(PDO::FETCH_ASSOC);
  $rcount = $rstmt->rowCount();

  $tstmt = $DB_con->prepare("SELECT * FROM randomCode WHERE hashUser='" . $userauth['hashUser'] . "'");
  $tstmt->execute();
  $trow = $tstmt->fetch(PDO::FETCH_ASSOC);
  $tcount = $tstmt->rowCount();

  if ($rcount !== 0 || $tcount !== 0) {
    $data['success'] = false;
  } else {
    $user->register($userauth, 'randomCode');
    $sstmt = $DB_con->prepare("SELECT * FROM randomCode WHERE randomCode='".$userauth['randomCode']."' AND hashUser='" . $userauth['hashUser'] . "'");
    $sstmt->execute();
    $srow = $sstmt->fetch(PDO::FETCH_ASSOC);
    $scount = $sstmt->rowCount();

    $data['success'] = true;
    $data['userAuth'] = $srow;
  }
echo json_encode($data);
?>
