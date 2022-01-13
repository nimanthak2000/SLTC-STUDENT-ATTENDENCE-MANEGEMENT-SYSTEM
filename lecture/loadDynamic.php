<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include "attendanceSelect.html";

$facId = $_SESSION["id"];

require('../db.php');

$getBatch = "select * from classfac;";

$getBatch = strtoupper($getBatch);

$result = mysqli_query($conn, $getBatch);

while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
	for($i=1;$i<10;$i++){
		if($row[$i]==0){
			break;
		}
		else if($row[$i]==$facId){
			echo "<script>".
			"var b = document.getElementById(\"batch\");".
			"var c = document.getElementById(\"date\");".
			"var opt = document.createElement(\"option\");".
			"opt.value = \"".$row[0]."\";".
			"opt.innerHTML = \"".$row[0]."\";".
			"b.add(opt);".
			"</script>";
		}
		else{
			continue;
		}
	}
}
?>