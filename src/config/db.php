<?php

// element of connection
$host = "localhost";
$username = "root";
$pass = "";
$dbname = "task_manager";

// connection with database task_manager
$conn = new mysqli($host, $username,$pass,$dbname);
// condition --> check from connection status
if ($conn->connect_error){
die( "Connection is failed". $conn-> connect_error );
};