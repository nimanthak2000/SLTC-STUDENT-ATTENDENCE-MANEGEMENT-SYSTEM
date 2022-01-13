<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

session_destroy();

$t = "../loginLecturer.html";

header("Location: ".$t);
exit();
?>