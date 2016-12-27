<?php
  require_once '../config.php'; //configuration file


  if ($_POST) {
      $registeration['fullname'] = htmlentities($_POST['fullname'], ENT_QUOTES);
      $registeration['contactDetail'] = htmlentities($_POST['contactDetail'], ENT_QUOTES);
      $stmt = $DB_con->prepare("SELECT * FROM fullpro WHERE contactDetail='".$registeration['contactDetail']."' OR firstname LIKE '".%$registeration['fullname']%."' OR lastname LIKE '".%$registeration['lasstname']%."'");
      $stmt->execute();
      $row=$stmt->fetch(PDO::FETCH_ASSOC);
      $count =$stmt->rowCount();

      if ($count!=0) {
          $data['success'] = false;
          $data['message'] = "<em style='color: red; font-weight:bold;'>We already have this Contact Detail</em>";
      } else {
          $data['success'] = true;
          $data['message'] = "<em style='color: green; font-weight:bold;'>One Destiny...! Please Click</em>";
      }
      echo json_encode($data);
  }
