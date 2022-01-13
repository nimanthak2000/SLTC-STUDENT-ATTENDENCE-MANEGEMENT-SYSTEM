<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
require('../db.php');


include "addLecturer.html";

$create = "insert into lecture values(".$_POST["id"].",\"".$_POST["name"]."\",\"default\");" ;

$create = strtoupper($create);

$result = mysqli_query($conn,$create);

if($result){
	echo"
	<script>alert(\"LECTURER ADDED\")</script>
	";
}
else{
	echo"
	<script>alert(\"LECTURER ADD UNSUCCESSFUL\")</script>
	";
}

mysqli_close($conn);
?>