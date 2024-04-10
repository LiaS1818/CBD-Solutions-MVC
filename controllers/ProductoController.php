<?php
namespace Controllers;

use MVC\Router;
use Model\Producto;
use Intervention\Image\ImageManagerStatic as Image;

class ProductoController {
    //recuerda que los metodos estaticos no requieren instanciar
    public static function index(Router $router) { //obteniendo la referencia

        $productos = Producto::all();
        $resultado = null;
        $router->render('productos/admin', [
            'productos' => $productos,
            'resultado' => $resultado
        ]);
    }

    public static function crear(Router $router) {
        $producto = new Producto;
        
        // Arreglo con mensajes de errores
        $errores = Producto::getErrores();

        if( $_SERVER['REQUEST_METHOD'] === 'POST'){
        
            /** Crea una nueva instancia **/
             $producto = new Producto($_POST['producto']);
             
             // debuguear($producto);
    
             /** SUBIDA DE ARCHIVOS  */
    
            // Generar un nombre único para imagnees
            $nombreImagen = md5(uniqid( rand(), true)) .".jpg";
    
            // Setear la imagen
            // Realiza un resize a la imagen con intervention 
            if($_FILES['producto']['tmp_name']['imagen']){
                $imagen = Image::make($_FILES['producto']['tmp_name']['imagen'])->fit(800,600); //Archivo
                $producto->setImage($nombreImagen);
            }

    
            //Validar
            $errores = $producto->validar();
             
             if (empty($errores)) {
                // Crear la carpeta para subir la imagen al servidor
                if (!is_dir(CARPETA_IMAGENES)) {
                    mkdir(CARPETA_IMAGENES);
                }
                //Asignar files hacia una variable
                // $imagen = $_FILES['imagen'];
                // var_dump($imagen['name']) imprime lo que haya dentro de name en el arreglo llenado con informacion de la imagen
                 
                //Guarda la imagen en el servidor
                $imagen->save(CARPETA_IMAGENES . $nombreImagen);
    
                // Guarda en la base de datos
                $producto->guardar();
                
                // // Subir la imagen al servidor, esta era otra manera de realizar la subida
                // move_uploaded_file($imagen['tmp_name'], $carpetaImagenes . $nombreImagen);
        
            }
        }    
        $router->render('productos/crear', [
            'producto' => $producto,
            'errores' => $errores
        ]);
        
    }

    public static function actualizar(Router $router) {

        $id = validarORedereccionar('/admin');
        $producto = Producto::find($id);

        $errores = Producto::getErrores();

        // Metodo Post para actualizar
        if($_SERVER['REQUEST_METHOD'] === 'POST'){

            // Asignar los atributos
            $argc = $_POST['producto'];
            
            $producto->sincronizar($argc);
            
            // Generar un nombre único para imagnees
            $nombreImagen = md5(uniqid( rand(), true)) .".jpg";
    
            // Setear la imagen
            // Realiza un resize a la imagen con intervention 
            if($_FILES['producto']['tmp_name']['imagen']){
                $imagen = Image::make($_FILES['producto']['tmp_name']['imagen'])->fit(800,600); //Archivo
                $producto->setImage($nombreImagen);
    
            }
            if (empty($errores)) {
                //Almacenar la imagen solo si hay una nueva imagen
                if($_FILES['producto']['tmp_name']['imagen']){
                $imagen->save(CARPETA_IMAGENES . $nombreImagen);
                }
                $producto->guardar();   
                // $imagen->save(CARPETA_IMAGENES . $nombreImagen);
                
            }
        }
    
        $router->render('/productos/actualizar', [
            'producto' => $producto,
            'errores' => $errores
        ]);
    }

    public static function eliminar() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') { //revisar el request mthod, post porque enviamos el formulario via POST
            $id = $_POST['id'];
            $id = filter_var($id, FILTER_VALIDATE_INT);
    
            if ($id) {
                $producto = Producto::find($id);
                // Eliminar el archivo
                $producto->eliminar();
            }
        } 
    }
}