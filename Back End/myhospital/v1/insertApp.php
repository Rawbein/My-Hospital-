<?php
 $host='localhost';
 $uname='root';
 $pwd='';
 $db="myhospital";

 $con = mysqli_connect($host,$uname,$pwd,$db) or die("connection failed");



$patient = isset($_POST["patient"]) ? $_POST["patient"] : '';;
$doctor = isset($_POST["doctor"]) ? $_POST["doctor"] : '';;
$time = isset($_POST["time"]) ? $_POST["time"] : '';;
$date = isset($_POST["date"]) ? $_POST["date"] : '';;

 
 $r1="insert into appointments(patient,doctor,time,date)values('$patient','$doctor','$time','$date')";
 
 $r=mysqli_query($con,$r1);
 if($r==1)
 {
  
  echo"sucessfull";
 }
 else
 {
  echo "error";
 }

 
 mysqli_close($con);
?>