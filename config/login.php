<?php 
require_once('config.php');
$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT u.id, u.correo, u.password, u.status, r.nombre as rol FROM usuarios u left join roles r ON u.rol_id = r.id where correo = '$email' AND password = '$password' AND status = 1";
$result = $conexion->query($query);
$row = $result->fetch_assoc();

if($result->num_rows > 0){
  session_start();
  $_SESSION['user'] = $email;
  $_SESSION['rol'] = $row['rol'];
  header("Location: ../bienvenida.php");
}else{
  header("Location: ../index.php");
}
?>