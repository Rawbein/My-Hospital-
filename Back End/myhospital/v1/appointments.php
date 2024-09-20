<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT appointments_id , date, time, patient, doctor FROM appointments");

$stmt ->execute();
$stmt -> bind_result($appointments_id , $date, $time, $patient, $doctor);

$appointments = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['appointments_id '] = $appointments_id ;
	$temp['date'] = $date;
	$temp['time'] = $time;
	$temp['patient'] = $patient;
	$temp['doctor'] = $doctor;


	array_push($appointments,$temp);
	}

	echo json_encode($appointments);
?>