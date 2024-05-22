<?php

namespace Controllers;
use MVC\Router;
use Model\Admin;
use Classes\Email;


class LoginController {

    public static function login(Router $router) {

        $errores = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            echo "Autenticando";
           
            $auth = new Admin($_POST);
            
            $errores = $auth->validar();

            if (empty($errores)) {

                //Comprobar que exista el usuario
                $auth = Admin::where('email', $auth->email);

                // Verificar si el usuario existe
                if ($auth) {
                    $autenticado = $auth->comprobarPassword($auth);
                    
                    if($autenticado) {
                        //Autenticar el usuario
                        $auth->autenticar();
                    }else{
                        //Obtener los errores
                        $errores = Admin::getErrores();
                    }
                }else {
                    Admin::setAlerta('error', 'Usuario no existe');
                }

                Admin::getAlertas();
                
            }
        }

        $router->render('auth/login', [
            'errores' => $errores
        ]);
    }

    public static function logout() {
        session_start();

        $_SESSION = [];
        header('Location: /');
    }

    public static function creaCuenta(Router $router) {
        $usuario = new Admin;
        // Alertas vacias
        $alertas = [];
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            $usuario->sincronizar($_POST);
            $alertas = $usuario->validarRegitro();
            
            //Revisar que alerta este vacio
            if(empty($alertas)){
                //Verificar que el usuario no este registrado
                $resultado = $usuario->existeUsuario();
                if ($resultado->num_rows) {
                    $alertas = Admin::getAlertas();
                }else{
                    //Hashear el password 
                    $usuario->hashPassword();

                    // Generar un token unico
                    $usuario->crearToken();

                    // Enviar email
                    $email = new Email($usuario->email, $usuario->nombre, $usuario->token);
                    
                    $email->enviarConfirmacion();

                    $resultado = $usuario->guardar();
            
                    if ($resultado) {

                        header('Location: /mensaje');
                    }
                    // debuguear($usuario);
                }
            }
        }

     
        $router->render('auth/crear-cuenta', [
            'usuario' => $usuario,
            'alertas' => $alertas
        ]);
    }

    public static function mensaje(Router $router){
        $router->render('auth/mensaje');
    }

    public static function confirmar(Router $router){
        $token = s($_GET['token']); //leer el token de la url
        
        $usuario = Admin::where('token', $token);
        
        if(empty($usuario)){
            // Mostrar el mensaje de error
            Admin::setAlerta('error', 'Token no Válido');
        }else{
            $usuario->confirmado = '1';
            $usuario->token = null;
            $usuario->guardar();
            Admin::setAlerta('exito', 'Cuenta Comprobada correctamente');
        }
        // debuguear($usuario);
        $alertas = Admin::getAlertas();
        $router->render('auth/confirmar-cuenta', [
            'alertas' => $alertas
        ]);
        
    }
    
}