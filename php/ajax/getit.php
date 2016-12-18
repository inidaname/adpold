<?php
require_once '../config.php';



    $userauth['hashUser'] = htmlentities(trim($_POST['hashUser']), ENT_QUOTES);
      $stmt = $DB_con->prepare("SELECT * FROM visituser WHERE hashUser='".$userauth['hashUser']."'");
      $stmt->execute();
      $row=$stmt->fetch(PDO::FETCH_ASSOC);
      $count =$stmt->rowCount();

      if ($count != 0) {
        // $gstmt = $DB_con->prepare("SELECT * FROM membership WHERE phone='".$row['data']."'");
        // $gstmt->execute();
        // $grow=$gstmt->fetch(PDO::FETCH_ASSOC);

        $data['success'] = true;
        $data['userdatas'] = $grow;
      } else {
        $data['success'] = false;
      }

    echo json_encode($data);

?>
