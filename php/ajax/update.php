<?php
require_once '../config.php';
  function my_apply_htmlentities(&$value)
  {
      $value = htmlentities($value);
  }
  array_walk_recursive($array, 'my_apply_htmlentities');
?>
