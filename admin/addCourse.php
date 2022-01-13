<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include "addCourse.html";

require('../db.php');

$create = "insert into course values(".$_POST["id"].",\"".$_POST["name"]."\");" ;

$create = strtoupper($create);

$result = mysqli_query($conn,$create);

if($result){
	echo"
	<script>alert(\"COURSE ADDED\")</script>
	";
}
else{
	echo"
	<script>alert(\"COURSE ADD UNSUCCESSFUL\")</script>
	";
}

mysqli_close($conn);
?>