<div class="grid">
    <?php foreach($productos as $producto) { ?> 
    <div class="anuncio">

        <img src="/imagenes/<?php echo $producto->imagen; ?>" loading="lazy"  alt="anuncio">
    
    <div class="contenido-anuncio">
        <h3><?php echo $producto->nombre; ?></h3>
        <p><?php echo $producto->descripcion; ?></p>
        <p class="precio">$<?php echo $producto->precio; ?></p>

        <a href="/producto?id_producto=<?php echo $producto->id_producto; ?>" class="boton-amarillo-block">
        Ver Producto
        </a>
    </div>
    </div> <!--  Contenido anuncio -->
    <?php } ?>
</div>