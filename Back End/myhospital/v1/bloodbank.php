<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT sn, blood FROM bloodbank");

$stmt ->execute();
$stmt -> bind_result($sn, $blood);

$bloodbank = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['sn'] = $sn;
	$temp['blood'] = $blood;

	array_push($bloodbank,$temp);
	}

	echo json_encode($bloodbank);
?>