<?php
 include("connect.php");
$source = $_POST['source'];
 $destination = $_POST['destination'];
 $ddate = $_POST['ddate'];

$sql_users = "INSERT INTO user.booked_flight(`f_id`, `f_source`, `f_destination`, `f_dt`, `f_fare`) VALUES (NULL, '$source', '$destination', '$ddate', '500')";
 $res_users = mysqli_query($connect, $sql_users);
 if($res_users== true){
 echo 'booking successful';
 echo '<br><br><a href="http://localhost/user/payment1.html">proceed to payment</a>';
 }

 else{
 echo "Booking unsuccessful. Please try again";
 echo "<br><br><a href='http://localhost/user/booking.html'>Return to Booking</a>";
 }
 ?>