<?php

$host = 'localhost';
$database = 'site';
$user = 'root';
$pswd = '';//for unix insert to here your password;

@$db = mysql_connect($host,$user,$pswd);

mysql_select_db($database);

mysql_query("SET NAMES 'utf8'");
mysql_query("SET CHARACTER SET 'utf8'");
mysql_query("SET SESSION collation_connection = 'utf8_general_ci'");

$login = htmlspecialchars(addslashes(strtolower(trim($_POST['login']))));

$password =  md5(md5(htmlspecialchars(addslashes(trim($_POST['password'])))));

$checkQuery = "SELECT * FROM login WHERE
login = '$login' AND
password = '$password'";

$result = mysql_query($checkQuery);

if(@mysql_num_rows($result) !== 0)
{
  $arrayResult = mysql_fetch_array($result);
  session_start();
  $_SESSION['isAuth'] = true;
  $_SESSION['ID'] = $arrayResult['ID'];
  mysql_close($db);
  exit(header("Location: ../profile.php"));
}
else
{
  mysql_close($db);
  exit(header("Location: ../index.php"));
}