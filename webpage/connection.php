<?php 

	$host = "localhost";
	$user = "root";
	$password = "";

	$conn = new mysqli($host, $user, $password);

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	// else{
		
	// 	echo "Connected successfully";
	// } 


 ?>