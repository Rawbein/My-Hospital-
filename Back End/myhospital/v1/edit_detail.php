<?php

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $username = $_POST['username'];
    $email = $_POST['email'];
    $id = $_POST['id'];

    require_once 'db_connect.php';

    $sql = "UPDATE users SET username='$username', email='$email' WHERE id='$username' ";

 

          $result["success"] = "1";
          $result["message"] = "success";

          echo json_encode($result);
          mysqli_close($conn);
      }

?>


