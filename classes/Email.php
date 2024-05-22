<?php

namespace Classes;

use PHPMailer\PHPMailer\PHPMailer;

// Esta clase funciona como helper para no sobrecargar demasiado el Logincontroller
// Contiene los datos que necesita el sistema para poder enviar emails al usuario
class Email {
    public $email;
    public $nombre;
    public $token;

    public function __construct($email, $nombre, $token) {
        $this->email = $email;  
        $this->nombre = $nombre; 
        $this->token = $token; 
    }

    public function enviarConfirmacion() {
        // Crear el objeto de Email
        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; // Cambiado a Gmail
        $mail->SMTPAuth = true;
        $mail->Port = 587; // Puerto para TLS
        $mail->SMTPSecure = 'tls'; // Habilitar TLS
        $mail->Username = 'sorgoroto@gmail.com'; // Tu correo de Gmail
        $mail->Password = 'msfp emuz rngz skbd'; // Tu contraseña de Gmail o App Password si tienes 2FA

        $mail->setFrom('cuentas@cbdsolutions.com', 'CBDSolutions');
        $mail->addAddress($this->email, $this->nombre); // Se usa el nombre del usuario en lugar de 'CBDSolutions'
        $mail->Subject = 'Confirma tu cuenta';

        // Configuración de Email
        $mail->isHTML(TRUE);
        $mail->CharSet = 'UTF-8';

        // Contenido del Email con estilos
        $contenido = "<html>";
        $contenido .= "<head><style>";
        $contenido .= "body { font-family: 'Arial', sans-serif; color: #333; }";
        $contenido .= "h1 { color: #2E8B57; }"; // Verde relacionado con plantas
        $contenido .= "a { color: #6B8E23; text-decoration: none; }"; // Verde oliva para los enlaces
        $contenido .= "p { line-height: 1.5; }";
        $contenido .= ".container { background-color: #F0FFF0; padding: 20px; border-radius: 5px; }"; // Fondo verde claro
        $contenido .= "</style></head>";
        $contenido .= "<body>";
        $contenido .= "<div class='container'>";
        $contenido .= "<h1>Hola " . $this->nombre . "</h1>";
        $contenido .= "<p>Has creado tu cuenta en App CBDSolutions. Para confirmar, presiona el siguiente enlace:</p>";
        $contenido .= "<p><a href='http://localhost:3000/confirmar-cuenta?token=" . $this->token . "'>Confirmar cuenta</a></p>";
        $contenido .= "<p>Si tú no solicitaste esta cuenta, puedes ignorar este mensaje.</p>";
        $contenido .= "</div>";
        $contenido .= "</body></html>";
        $mail->Body = $contenido;

        // Enviar correo
        $enviado = $mail->send();
        if (!$enviado) {
            echo 'Error al enviar correo: ' . $mail->ErrorInfo;
        } else {
            echo 'Correo enviado correctamente';
        }
    }
}
