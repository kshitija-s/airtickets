<?php
include ("connect.php");


$source = $_POST['source'];
$destination = $_POST['destination'];
$cdate = $_POST['cdate'];

$sql_users = "UPDATE user.booked_flight SET f_dt='$cdate' WHERE  f_destination='$destination' AND f_source='$source'";
$res_users = mysqli_query($connect, $sql_users);
 if($res_users== true){
 echo "UPDATION successful";
 echo "<br><br><a href='http://localhost/user/index.html'>Return HOME</a>";
 }

 else{
 echo "UPDATION unsuccessful. Please try again";
 echo "<br><br><a href='http://localhost/user/changedate.html'>Return to change date</a>";
 }