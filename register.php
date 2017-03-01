<?php
 include("connect.php");
$name = $_POST['name'];
 $email = $_POST['email'];
 $password = $_POST['password'];
$gender = $_POST['gender'];
$age = $_POST['age'];
$contact= $_POST['contact'];
$sql_users = "INSERT INTO user.users1 (u_id, u_name, u_mail, u_password, u_gender, u_age, u_contact) VALUES (NULL,
'$name', '$email', '$password',  '$gender', '$age', '$contact')";
 $res_users = mysqli_query($connect, $sql_users);
 if($res_users== true){
 echo "Registration successful";
 echo "<br><br><a href='http://localhost/user/index.html'>Proceed with login</a>";
 }
 else{
 echo "Registration unsuccessful, or EMAIL already registered";
 echo "<br><br><a href='http://localhost/user/register.html'>Try signing up again</a>";
 }
 ?>