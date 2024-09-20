<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT medicine, type, volume FROM medicines");

$stmt ->execute();
$stmt -> bind_result($medicine, $type, $volume);

$medicines = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['medicine'] = $medicine;
	$temp['type'] = $type;
	$temp['volume'] = $volume;

	array_push($medicines,$temp);
	}

	echo json_encode($medicines);
?>