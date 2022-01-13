<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include "loadDynamic.php";

require('../db.php');

$create = "select pass from lecture where id=".$_SESSION["id"].";";

$result = mysqli_query($conn,$create);

$result = mysqli_fetch_array($result);

if($result[0]==$_POST["old"]){
	$create = "update lecture set pass=\"".$_POST["new"]."\" where id=".$_SESSION["id"].";";
	$result = mysqli_query($conn,$create);
}
else{
	exit();
}

mysqli_close($conn);
?>