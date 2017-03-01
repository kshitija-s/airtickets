<?php
include ("connect.php");


$source = $_POST['source'];
$destination = $_POST['destination'];
$cddate = $_POST['cddate'];
$sql_users = "DELETE FROM booked_flight WHERE f_source='$source' AND f_destination='$destination' AND f_dt='$cddate'";
$res_users = mysqli_query($connect, $sql_users);
 if($res_users== true){
 echo "DELETION successful";
 echo "<br><br><a href='http://localhost/user/home.html'>Return HOME</a>";
 }

 else{
 echo "DELETION unsuccessful. Please try again";
 echo "<br><br><a href='http://localhost/user/cancel.html'>Return to Cancellation</a>";
 }