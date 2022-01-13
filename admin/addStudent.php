<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include "addStudent.html";

require('../db.php');

$create = "insert into student values(".$_POST["id"].",\"".$_POST["name"]."\",\"default\", \"".$_POST["batch"]."\", ".$_POST["year"].");";

$create = strtoupper($create);

$result = mysqli_query($conn,$create);

if($result){
	echo"
	<script>alert(\"STUDENT ADDED\")</script>
	";
}
else{
	echo"
	<script>alert(\"STUDENT ADD UNSUCCESSFUL\")</script>
	";
}

mysqli_close($conn);
?>