<?php


define('TEMPLATES_URL', __DIR__ . '/templates'); //__dir__ Toma la ubicacion del archivo actual
define('FUNCIONES_URL',__DIR__ .'funciones.php');// esto hace codigo portable
define('CARPETA_IMAGENES', $_SERVER['DOCUMENT_ROOT'] . '/imagenes/');


function incluirTemplate($nombre) {
    include  TEMPLATES_URL . "/${nombre}.php";
}

function estaAutenticado() : bool {
    session_start();
    if (!$_SESSION['login']) {
        header('Location: /CBD_Solutions');
    }

    return true;
}

function debuguear($variable){
    echo "<pre>";
    var_dump($variable);
    echo "</pre>";
    exit;
}

function mostrarNotificaion($resultado) {
    if ($resultado == 1){
        return 'Producto creado correctamente';
        
    }elseif($resultado == 2){
        
        return 'Producto actualizado correctamente';
    }elseif($resultado == 3){
        return 'Producto Eliminado correctamente';
    }
}

function validarORedereccionar( string $url){
    // Validar la URL por ID válido
    $id = $_GET['id'];
    $id = filter_var($id, FILTER_VALIDATE_INT);

    if (!$id) {
        header("Location: ${url}");
    }
    return $id;
}

// Escape / Sanitizar HTML
function s($html) : string{
    
    $s = htmlspecialchars($html);

    return $s;
}
