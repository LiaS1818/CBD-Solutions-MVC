
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Redireccionando...</title>
<?php
// Redirige a otra carpeta
header("Location: public/index.php");
exit; // Asegura que el script se detenga aquí para evitar ejecuciones adicionales
?>

</head>
<body>
  <p>Redireccionando...</p>
</body>
</html>
