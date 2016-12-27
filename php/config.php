<?php

session_start();

$DB_host = "ninibocom.globatmysql.com"; // "ninibocom.globatmysql.com"
$DB_user = "onedestiny";
$DB_pass = "actionforward";
$DB_name = "adpmembership";

try {
    $DB_con = new PDO("mysql:host={$DB_host};dbname={$DB_name}", $DB_user, $DB_pass);
    $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo $e->getMessage();
}
include_once 'class/User.php';
$user = new USER($DB_con);
