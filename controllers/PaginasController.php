<?php 

namespace Controllers;

use MVC\Router;
use Model\Producto;
use Model\Concentracion;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

class PaginasController {
    public static function index (Router $router) {
        $productos = Producto::get(3);
        $router->render('paginas/index', [
            'productos' => $productos
        ]);
    }
    public static function nosotros (Router $router) {
        $router->render('paginas/nosotros');
    }
    public static function productos (Router $router) {

        $productos = Producto::all();
        $router->render('paginas/productos', [
            'productos' => $productos
        ]);
    }
    public static function producto (Router $router) {
        $id = $_GET['id_producto'];
        $producto = Producto::find($id);
        $concentraciones = Concentracion::all();
        $router->render('paginas/producto', [
            'producto' => $producto,
            'concentraciones' => $concentraciones
        ]);
    }
   
    public static function contacto  (Router $router) {
        if($_SERVER['REQUEST_METHOD'] === 'POST'){

            $respuestas = $_POST['contacto'];
       
            // Crear intancia de P
            $phpmailer = new PHPMailer();

            //Configuracion SMTP
            $phpmailer->isSMTP();
            $phpmailer->Host = 'sandbox.smtp.mailtrap.io';
            $phpmailer->SMTPAuth = true;
            $phpmailer->Port = 2525;
            $phpmailer->Username = 'cb3b64c4dd77fe';
            $phpmailer->Password = 'b6a39251fdcc2a';
            $phpmailer->SMTPSecure = 'tls'; //transport leyer securete
            
            // Configurar el contenido del Email
            $phpmailer->setFrom('admin@CBDSolutions.com');
            $phpmailer->addAddress('admin@CBDSolution.com', 'CBDSolutions.com');
            $phpmailer->Subject = 'Tienes un nuevo mensaje';

            // Habilitar HTML
            $phpmailer->isHTML(true);
            $phpmailer->CharSet = 'UTF-8';

            // Definir el contenido
            $contenido = '<html>';
            $contenido .= '<p> Tienes un nuevo mensaje </p>';
            $contenido .= '<p>Nombre: ' . $respuestas['nombre'] . '</p>';

            // Enviar de forma condicional algunos campos de email o telefono
            if ($respuestas['contacto'] === 'telefono') {
                $contenido .= '<p>Telefono: ' . $respuestas['telefono'] . '</p>';
                $contenido .= '<p>Fecha: ' . $respuestas['fecha'] . '</p>';
                $contenido .= '<p>Hora: ' . $respuestas['hora'] . '</p>';
            }else {
                $contenido .= '<p>Email: ' . $respuestas['email'] . '</p>';
            }

            $contenido .= '<p>Mensaje: ' . $respuestas['mensaje'] . '</p>';
            $contenido .= '<p>Contacto: ' . $respuestas['opciones'] . '</p>';
            $contenido .= '</html>';

            $phpmailer->Body = $contenido;
            $phpmailer->AltBody = 'Esto es un texto alternativo';

            // Enviar el email
            if($phpmailer->send()) {
                echo "Mensaje enviado correctamente";
            }else {
                echo " El mensaje no se pudo enviar...";
            }
        }

         $router->render('paginas/contacto');
    }   
    public static function login  () {
        echo "Desde el login";
    }   
    public static function registro  () {
        echo "Desde el cotacto";
    }   


}