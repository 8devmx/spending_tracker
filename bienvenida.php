<?php 
  require_once 'config/validate_session.php';
  require_once 'config/validate_roles.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="styles/style.css">
  <title>Document</title>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-12">
        <?php include 'session_paragraph.php'; ?>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <p>Bienvenido a nuestro sistema</p>
        <a href="modulos/gastos" class="btn btn-success">Gastos</a>
        <a href="modulos/categorias" class="btn btn-primary">Categorías</a>
        <a href="modulos/usuarios" class="btn btn-secondary">Usuarios</a>
      </div>
    </div>
  </div>
</body>
</html>