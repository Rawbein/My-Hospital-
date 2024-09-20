<?php
 $host='localhost';
 $uname='root';
 $pwd='';
 $db="myhospital";

 $con = mysqli_connect($host,$uname,$pwd,$db) or die("connection failed");



$doctor_name = isset($_POST["doctor_name"]) ? $_POST["doctor_name"] : '';;
$doctor_type = isset($_POST["doctor_type"]) ? $_POST["doctor_type"] : '';;
$doctor_contact = isset($_POST["doctor_contact"]) ? $_POST["doctor_contact"] : '';;
$d_address = isset($_POST["d_address"]) ? $_POST["d_address"] : '';;
$d_email = isset($_POST["d_email"]) ? $_POST["d_email"] : '';;


 
 $r1="insert into doctors(doctor_name,doctor_type,doctor_contact,d_address,d_email)values('$doctor_name','$doctor_type','$doctor_contact','$d_address','$d_email')";
 
 $r=mysqli_query($con,$r1);
 if($r==1)
 {
  
  echo" added";
 }
 else
 {
  echo " adding failed";
 }

 
 mysqli_close($con);
?>