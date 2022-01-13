<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include "password.html";

require('../db.php');

$create = "select pass from administrator where id=".$_SESSION["id"].";";

$result = mysqli_query($conn,$create);

$result = mysqli_fetch_array($result);

if($result[0]==$_POST["old"]){
	$create = "update administrator set pass=\"".$_POST["new"]."\" where id=".$_SESSION["id"].";";
	$result = mysqli_query($conn,$create);
	header("Location: dashboard.html");
}
else{
	header("Location: dashboard.html");
	exit();
}

mysqli_close($conn);
?>