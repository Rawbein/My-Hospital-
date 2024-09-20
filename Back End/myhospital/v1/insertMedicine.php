<?php
 $host='localhost';
 $uname='root';
 $pwd='';
 $db="myhospital";

 $con = mysqli_connect($host,$uname,$pwd,$db) or die("connection failed");



$medicine = isset($_POST["medicine"]) ? $_POST["medicine"] : '';;
$type = isset($_POST["type"]) ? $_POST["type"] : '';;
$volume = isset($_POST["volume"]) ? $_POST["volume"] : '';;


 
 $r1="insert into medicines(medicine,type,volume)values('$medicine','$type','$volume')";
 
 $r=mysqli_query($con,$r1);
 if($r==1)
 {
  
  echo"added ";
 }
 else
 {
  echo "adding failed";
 }

 
 mysqli_close($con);
?>