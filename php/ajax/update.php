<?php
require_once '../config.php';
  function my_apply_htmlentities(&$value)
  {
      $value = htmlentities($value);
  }
  $updatethem = array_walk_recursive($_POST, 'my_apply_htmlentities');

  // now setting up to update;
  $stmt = $DB_con->prepare("SELECT * FROM fullpro WHERE hashUser='".$updatethem['hashUser']."'");
  $stmt->execute();
  $row=$stmt->fetch(PDO::FETCH_ASSOC);
  $count =$stmt->rowCount();

  if ($count == 0) {
      $data['success'] = false;
      $data['message'] = "Please try to login at the Homepage again";
  } else {
      $user->updatethem($updatethem, 'fullpro');
      $data['success'] = true;
  }
