<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT id, name, phone, photo FROM drivers");

$stmt ->execute();
$stmt -> bind_result($id, $name, $phone, $photo);

$drivers = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['id'] = $id;
	$temp['name'] = $name;
	$temp['phone'] = $phone;
	$temp['photo'] = $photo;

	array_push($drivers,$temp);
	}

	echo json_encode($drivers);
?>