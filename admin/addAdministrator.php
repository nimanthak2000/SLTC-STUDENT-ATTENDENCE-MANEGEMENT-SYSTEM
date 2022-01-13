<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include "addAdministrator.html";

require('../db.php');

$create = "insert into administrator values(".$_POST["id"].",\"".$_POST["name"]."\",\"default\");" ;

$create = strtoupper($create);

$result = mysqli_query($conn,$create);

if($result){
	echo"
	<script>alert(\"ADMINISTRATOR ADDED\")</script>
	";
}
else{
	echo"
	<script>alert(\"ADMINISTRATOR ADD UNSUCCESSFUL\")</script>
	";
}

mysqli_close($conn);
?>