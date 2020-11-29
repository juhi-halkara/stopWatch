<?php
session_start();
session_destroy();
unset($_SESSION["$username"]);
setcookie('usernamecookie','',time()-86400);
setcookie('passwordcookie','',time()-86400);
header('location:login.php');
?>