<?php

namespace Controllers;
use MVC\Router;
use Model\Admin;

class LoginController {

    public static function login(Router $router) {

        $errores = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            echo "Autenticando";
           
            $auth = new Admin($_POST);
            
            $errores = $auth->validar();

            if (empty($errores)) {
                $resultado = $auth->existeUsuario();

                // Verificar si el usuario existe
                if (!$resultado) {
                    $errores = Admin::getErrores();
                }else {
                    // Verificar password
                    $autenticado = $auth->comprobarPassword($resultado);

                    if($autenticado) {
                        //Autenticar el usuario
                        $auth->autenticar();
                    }else{
                        //Obtener los errores
                        $errores = Admin::getErrores();
                    }

                }
                
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
}