<?php
/**
 * for the user data
 */
class User
{

  private $db;

  function __construct($DB_con) {
    $this->db = $DB_con;
  }

  public function register($register, $table)
  {
     try
     {
        $columns = '`' . implode("`,`",array_keys($register)) . '`';
        $escaped_values = array_values($register);
        $values  = "'" . implode("','", $escaped_values) . "'";
        $sql = "INSERT INTO `$table`($columns) VALUES ($values)";

         $stmt = $this->db->prepare("$sql");
         $stmt->bindparam(":$columns", $escaped_values);
         $stmt->execute();

         return $stmt;
     }
     catch(PDOException $e)
     {
         echo $e->getMessage();
     }
  }
   public function confirm($register)
  {
     try
     {
        $columns = '`' . implode("`,`",array_keys($register)) . '`';
        $escaped_values = array_values($register);
        $values  = "'" . implode("','", $escaped_values) . "'";
        $sql = "INSERT INTO `user_auth`($columns) VALUES ($values)";

        $stmt = $this->db->prepare("$sql");
        $stmt->bindparam(":data", $register['data']);
        $stmt->bindparam(":user_auth", $register['user_auth']);
        $stmt->execute();

         return $stmt;
     }
     catch(PDOException $e)
     {
         echo $e->getMessage();
     }
  }
}

?>
