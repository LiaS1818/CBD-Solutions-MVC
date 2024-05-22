<?php 

namespace MVC;

use Sabberworm\CSS\Value\Value;

class Router {

    public $rutasGET = [];
    public $rutasPOST = [];

    public function get($url, $fn) {
        $this->rutasGET[$url] = $fn;
    }

    public function post($url, $fn) {
        $this->rutasPOST[$url] = $fn;
    }
    
    public function comprobarRutas() {
        
        session_start();
        $auth = $_SESSION['login'] ?? null;
        
        // Arreglo de rutas protegidas
        $rutas_protegidas = ['/admin'];

        
        $auth = $_SESSION['login'] ?? null;
        
        
        $urlActual = $_SERVER['PATH_INFO'] ?? '/';
        $metodo = $_SERVER['REQUEST_METHOD'];

        

        if ($metodo === 'GET') {
            $fn = $this->rutasGET[$urlActual] ?? null;
        } else {
            $fn = $this->rutasPOST[$urlActual] ?? null;
        }


        // Proteger las rutas
        if (in_array($urlActual, $rutas_protegidas) && !$auth) { //Verificar si en el arreglo de urlActual hay un elemento igual en rutas_protegidas
            header('Location: /');
            
        }

        if ($fn) {
            // La URL existe y hay una funcion asociada
            
            call_user_func($fn, $this);
        }else {
            echo "Pagina no Encontrada";
        }
    }


    //Muestra un avista
    public function render($view, $datos = []) {
        
        foreach($datos as $key => $value) {
            $$key = $value; //variable de veriable, conforme vaya interando el arreglo cambiara de key
            //pero no perdera el valor. Transfor el atributo en una variable manipulable
        }


        ob_start(); //inicia almacenamiento en memoria durante un momento...
        include __DIR__ . "/views/$view.php";
        $contenido = ob_get_clean(); //limpiar el buffer

        include __DIR__ . "/views/layout.php";
    }
}