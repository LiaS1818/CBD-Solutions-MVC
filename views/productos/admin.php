<?php 
$resultado = $_GET['resultado'] ?? null; //placeholder: busca el valor y si no lo encuentra le asigna el valor por default
?>


<main class="contenedor">
    <h1>Administrador</h1>
    <?php 
        if ($resultado) {
            $mensaje = mostrarNotificaion(intval($resultado));
            if ($mensaje) { ?>
                <p class="alerta exito"><?php echo s($mensaje)?></p> 
          <?php  }
        }
    ?>
    <a href="productos/crear" class="boton-admin    ">Crear nuevo producto</a>

    <table class="productos">
        <thead>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Imagen</th>
                <th>Precio</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody> <!-- Mostrar los resultados -->
            <?php foreach( $productos as $producto ): ?>
            <tr>
                <td><?php echo $producto->id_producto; ?></td>
                <td><?php echo $producto->nombre; ?></td>
                <td><img  class="imagen-tabla" src="../imagenes/<?php echo $producto->imagen; ?>" alt=""></td>
                <td> $ <?php echo $producto->precio; ?></td>
                <td>
                    <form method="POST" class="w-100" action="/productos/eliminar">

                        <input type="hidden" name="id" value=" <?php echo $producto->id_producto; ?>"> 
                        <!-- enviar datos de forma oculta -->
                        <input type="submit" class="boton-rojo-block" value="Eliminar">
                    </form>
                    <a href="productos/actualizar?id=<?php echo $producto->id_producto; ?>" class=" ">Actualizar</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>
