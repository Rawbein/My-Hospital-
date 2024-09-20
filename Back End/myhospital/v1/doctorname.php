<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT doctor_name FROM doctors");

$stmt ->execute();
$stmt -> bind_result($doctor_name);

$doctors = array();

while($stmt ->fetch()){

    $temp = array();
	

	$temp['doctor_name'] = $doctor_name;
	

	array_push($doctors,$temp);
	}

	echo json_encode($doctors);
?>