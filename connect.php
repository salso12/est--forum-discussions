<?php
    $server = "localhost";
    $user = "root";
    $password = "";
    $db = "project";

    $conn = mysqli_connect($server,"root","",$db);
    if(!$conn){
        die("Connection Failed ". mysqli_connect_error());
    }
?>

