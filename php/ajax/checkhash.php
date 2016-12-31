<?php
  require_once '../config.php'; //configuration file


  if ($_POST) {
    $registeration['table'] = htmlentities($_POST['table'], ENT_QUOTES);
    $registeration['contactDetail'] = htmlentities($_POST['contactDetail'], ENT_QUOTES);
    $stmt = $DB_con->prepare("SELECT * FROM ".$registeration['table']." WHERE contactDetail='".$registeration['contactDetail']."'");
    $stmt->execute();
    $row=$stmt->fetch(PDO::FETCH_ASSOC);
    $count =$stmt->rowCount();

    if($count!=0) {
      $data['success'] = false;
    } else {
      $data['success'] = true;
  }
  echo json_encode($data);
  }
?>
