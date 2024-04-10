<?php

namespace Model;

class Admin extends ActiveRecord {
    // Base de datos

    protected static $tabla = 'clientes';
    protected static $columnasDB = ['id','email', 'contrasena'];

    public $id;
    public $nombre;
    public $apellido;
    public $email;
    public $telefono;
    public $nacimiento;
    public $contrasena;

    public function __construct($args = [])
    {
        $this->id = $args['id'] ?? null; //place holders
        // $this->nombre = $args['nombre'] ?? '';
        // $this->apellido = $args['apellido'] ?? '';
        // $this->telefono = $args['telefono'] ?? '';
        // $this->nacimiento = $args['nacimiento'] ?? '';
        $this->contrasena = $args['contrasena'] ?? '';
        $this->email = $args['email'] ?? '';
    }

    public function validar() {
        if (!$this->email) {
            self::$errores[] = 'El Email es obligatorio';
        }
        if (!$this->contrasena) {
            self::$errores[] = 'El Password es obligatorio';
        }

        return self::$errores;
    }

    public function existeUsuario() {
        //Revisar si un usuario existe o no
        $query = "SELECT * FROM " . self::$tabla . " WHERE email = '" . $this->email . "' LIMIT 1 ";
        $resultado = self::$db->query($query);
        
        // Si no hay ninguna columna 
        if (!$resultado->num_rows) {
            self::$errores[] = 'El usuario no existe';
        }

        return $resultado;
    }

    public function comprobarPassword($resultado) {

        $usuario = $resultado->fetch_object(); //regresa el objeto relacionado con la busqueda
        

        // Verificar si el password ingresado coencide con el de la base de datos
        $autenticado = password_verify($this->contrasena, $usuario->contrasena);
        
        // si no se encuentra coiciendencias
        if(!$autenticado) {
            self::$errores[] = 'El Password es Incorrecto';
        }

        return $autenticado;
    }

    public function autenticar() {
        session_start();

        //Llenar el arreglo de session
        $_SESSION['usuario'] = $this->email;
        $_SESSION['login'] = true;

        header('Location: /admin');
    }
}