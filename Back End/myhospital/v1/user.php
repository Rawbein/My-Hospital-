<?php 

include('db_connect.php');

$stmt = $conn->prepare("SELECT id, username, email FROM users");

$stmt ->execute();
$stmt -> bind_result($id, $username, $email);

$users = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['id'] = $id;
	$temp['username'] = $username;
	$temp['email'] = $email;
	

	array_push($users,$temp);
	}

	echo json_encode($users);
?>