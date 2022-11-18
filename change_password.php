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
<body class="text-center">
    
<main class="form-signin w-100 m-auto">
  <form action="config/change_password.php" method="POST">
    <h1>8dev</h1>
    <h2 class="h3 mb-3 fw-normal">Recupera tu contraseña</h2>
    <div class="form-floating my-3">
      <input type="password" class="form-control" id="floatingInput" name="new_password">
      <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
      <label for="floatingInput">Nueva contraseña</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Recuperar contraseña</button>
  </form>
</main>


    
  </body>
</html>