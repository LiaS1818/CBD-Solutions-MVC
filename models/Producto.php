<?php

namespace Model;

class Producto extends ActiveRecord {
     
    protected static $tabla = 'productos';
    protected static $columnasDB =  ['id_producto', 'nombre', 'precio', 'descripcion', 'imagen'];

    public $id_producto;
    public $nombre;
    public $precio;
    public $descripcion;
    public $imagen;

        
    public function __construct($args = [])
    {
        $this->id_producto = $args['id_producto'] ?? null; //place holders
        $this->nombre = $args['nombre'] ?? '';
        $this->precio = $args['precio'] ?? '';
        $this->descripcion = $args['descripcion'] ?? '';
        $this->imagen = $args['imagen'] ?? '';
    }
    

}