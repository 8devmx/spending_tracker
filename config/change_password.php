<?php 
require_once('config.php');
$id = $_POST['id'];
$pass = $_POST['new_password'];

$query = "UPDATE usuarios set password= '$pass' WHERE id= $id";
$conexion->query($query);

header("Location: ../index.php?message=success_password");

?>