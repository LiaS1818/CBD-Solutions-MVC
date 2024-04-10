<?php


// Obtener los datos de los productos
// session_start();
// Validar que sea un id valido
// $id = $_GET['id'];
// $id = filter_var($id, FILTER_VALIDATE_INT);
// $id_sesion = session_id();

    // if (!$id) {
    //     header('location: /CBD_Solutions/index.php');
    // }
    
?>
<main class="contenedor">
        <h1> <?php echo $producto->nombre; ?></h1>

    <div class="producto__ver">
            <img class="producto__imagen" src="imagenes/<?php echo $producto->imagen; ?>" alt="Imagen del producto">

            <div class="producto__contenido">
                <p>
                    <?php echo $producto->descripcion; ?>
                    
                </p>
                <input name="carrito_usuarios[cantidad]" class="formulario__campo" type="number" placeholder="Cantidad" min="1"> <!-- No numeros negativos-->
                <select class="formulario__campo" name="carrito_usuarios[concent]">
                    <option disabled selected>-- Concentracion --</option>
                    <?php foreach ( $concentraciones as $consent) : ?>
                        <option  class="formulario__talla"> <?php echo $consent->cantidad . "| $".$consent->precio?></option>
                        
                    <?php endforeach; ?>
                </select>
                <input class="formulario__submit" type="submit" value="Agregar al CArrito">
            </div>
        </div>
    </main>
