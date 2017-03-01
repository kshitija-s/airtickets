<?php
include ("connect.php");

$email = $_POST['email'];
$password = $_POST['password'];
$_SESSION['logged']=false;
$sql_users = "SELECT * FROM user.user1 WHERE u_mail = '$email' AND u_password ='$password' ";
$result_users = mysqli_query($connect,$sql_users);

if(mysqli_num_rows($result_users) <= 0)
{
echo "<script language='javascript'>alert('Unsuccessful')</script>";
header('Location:http://localhost/user/index.html');
}
else
{
session_start();
$row_users = mysqli_fetch_array($result_users);
$_SESSION['logged'] = true;
$_SESSION['name'] =  $row_users['u_name'];

$_SESSION['contact'] = $row_users['u_contact'];
$_SESSION['email'] = $row_users['u_mail'];
header('Location: http://localhost/user/home.html');
}

?>
