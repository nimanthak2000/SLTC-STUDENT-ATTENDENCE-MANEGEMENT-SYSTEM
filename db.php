<?php
    $host = "localhost";
	$user = "root";
	$pass = "";
	$db = "samsDB";

	$conn = mysqli_connect($host,$user,$pass);

	$nr = mysqli_select_db($conn,$db);

?>