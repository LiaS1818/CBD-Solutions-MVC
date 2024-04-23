<?php

    if (!isset($_SESSION)) {
        session_start();
    }

    $auth = $_SESSION['login'] ?? null;

    if(!isset($inicio)){
        $inicio = false;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Vitality CBD Solutions </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../build/css/app.css">
</head>
<body>

    <header class="header <?php echo $inicio ? 'inicio' : ''; ?>">
        <div class="contenedor contenido-header">
            <div class="barra">

                <h1>Green Vitality CBD Solutions </h1>
                <div class="mobile-menu">
                    <img src="imgs/barras.svg" alt="">
                </div> 

                <div class="derecha">

                    <img class="dark-mode-boton" src="imgs/dark-mode.svg" alt="">
                    
                    <nav class="navegacion-principal">
                        <?php if($auth): ?>
                            <a href="/">Inicio</a>
                            <a href="/productos">Productos</a>
                            <a href="/contacto">Contacto</a>
                            <a href="/logout">Cerrar Sesión</a>
                            <?php else : ?>
                                <a href="/">Inicio</a>
                                <a href="/productos">Productos</a>
                                <a href="/contacto">Contacto</a>
                                <a href="/nosotros">Nosotros</a>
                                <a href="/login">Login</a>
                                <a href="/crear-cuenta">Registro</a>
                                <?php endif; ?>
                            </nav>
                </div>
            </div><!-- barra -->
        </div>
    </header>

    <?php echo $contenido ?>

    <footer class="footer">
        <p>Lia Aide Sanchez Alvarez Gutierrez 4P Desarrollo Web Bases de Datos </p>
    </footer>
</body>
</html>

<script src="build/js/bundle.min.js"> </script>