<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT doctor_id, doctor_name, doctor_type, doctor_contact,d_address,d_email FROM doctors");

$stmt ->execute();
$stmt -> bind_result($doctor_id, $doctor_name, $doctor_type, $doctor_contact,$d_address,$d_email );

$doctors = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['doctor_id'] = $doctor_id;
	$temp['doctor_name'] = $doctor_name;
	$temp['doctor_type'] = $doctor_type;
	$temp['doctor_contact'] = $doctor_contact;
	$temp['d_address'] = $d_address;
	$temp['d_email'] = $d_email;

	array_push($doctors,$temp);
	}

	echo json_encode($doctors);
?>