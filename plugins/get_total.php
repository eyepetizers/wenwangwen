<?php 
define("PHPOK_SET",""); 
define("ROOT","");
?>
<?php require '../config.php'; ?>
<?php
$id = $_GET['id'];
$conn = new mysqli($config["db"]["host"],$config["db"]["user"],$config["db"]["pass"],$config["db"]["data"]);
if (!$conn)  {
  die('Could not connect: ' . mysql_error());
}
$result = $conn -> query( 'select count(*) from `aijiulist` where cate_id='.$id );
$row = $result -> fetch_row();
echo $row[0];
?>