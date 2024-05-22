<?php

namespace Model;

class Admin extends ActiveRecord {
    // Base de datos

    protected static $tabla = 'clientes';
    protected static $columnasDB = ['id','nombre', 'apellido', 'email', 'contrasena', 'telefono', 'admin', 'confirmado', 'token'];

    public $id;
    public $nombre;
    public $apellido;
    public $email;
    public $telefono;
    public $contrasena;
    public $admin;
    public $confirmado;
    public $token;


    public function __construct($args = [])
    {
        $this->id = $args['id'] ?? null; //place holders
        $this->nombre = $args['nombre'] ?? '';
        $this->apellido = $args['apellido'] ?? '';
        $this->telefono = $args['telefono'] ?? '';
        $this->contrasena = $args['contrasena'] ?? '';
        $this->email = $args['email'] ?? '';
        $this->admin = $args['admin'] ?? '0';
        $this->confirmado = $args['confirmado'] ?? '0';
        $this->token = $args['token'] ?? '';    
    }

    public function validarRegitro(){
        if (!$this->email) {
            self::$alertas['error'][] = 'El Email es obligatorio';
        }
        if (!$this->contrasena) {
            self::$alertas['error'][] = 'La contraseña es obligatoria';
        }
        if (!$this->nombre) {
            self::$alertas['error'][] = 'El nombre es obligatorio';
        }
        if (!$this->telefono) {
            self::$alertas['error'][] = 'El Telefono es obligatorio';
        }
        if (!$this->apellido) {
            self::$alertas['error'][] = 'El apellido es obligatorio';
        }

        if (strlen($this->contrasena < 6)) {
            self::$alertas['error'][] = 'El password tiene que tener por lo menos 6 caracteres';
        }
        return self::$alertas;
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
        if ($resultado->num_rows) {
            self::$alertas['error'][] = 'El usuario ya existe';
        }

        return $resultado;
    }

    public function hashPassword() {
        $this->contrasena = password_hash($this->contrasena, PASSWORD_BCRYPT);
    }

    public function crearToken() {
        $this->token = uniqid();
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