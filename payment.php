<?php
 include("connect.php");
 
$cardno=$_POST['cardno'];
 $cvv = $_POST['cvv'];
 $pin = $_POST['pin'];
 $month=$_POST['month'];
 $year=$_POST['year'];

$sql_users = "INSERT INTO payment('cardno','cvv','pin','month','year') VALUES ('$cardno', '$cvv', '$pin', '$month','$year')";
 $res_users = mysqli_query($connect, $sql_users);
 if($res_users== true){
 echo 'payment successful';
 echo '<br><a href="http://localhost/user/home.html">Return home</a>';
 }

 else{
 echo 'payment successful';
 echo '<br><a href="http://localhost/user/home.html">Return home</a>';
 }
 ?>