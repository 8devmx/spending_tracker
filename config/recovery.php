<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require '../PHPMailer/Exception.php';
require '../PHPMailer/PHPMailer.php';
require '../PHPMailer/SMTP.php';

require_once('config.php');
$email = $_POST['email'];
$query = "SELECT * FROM usuarios where correo = '$email' AND status = 1";
$result = $conexion->query($query);
$row = $result->fetch_assoc();

if($result->num_rows > 0){
  $mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = 'smtp-mail.outlook.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'EMAIL_OUTLOOK';
    $mail->Password   = 'CONTRASEÑA_OUTLOOK';
    $mail->Port       = 587;

    $mail->setFrom('CORREO_ELECTRONICO_FROM', 'NOMBRE_FORM');
    $mail->addAddress('CORREO_ELECTRONICO_PARA', 'NOMBRE_ELECTRONICO_PARA');
    $mail->isHTML(true);
    $mail->Subject = 'Recuperación de contraseña';
    $mail->Body    = 'Hola, este es un correo generado para solicitar tu recuperación de contraseña, por favor, visita la página de <a href="localhost/spending_tracker/change_password.php?id='.$row['id'].'">Recuperación de contraseña</a>';

    $mail->send();
    header("Location: ../index.php?message=ok");
} catch (Exception $e) {
  header("Location: ../index.php?message=error");
}

}else{
  header("Location: ../index.php?message=not_found");
}

?>
