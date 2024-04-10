<div class="contenedor_form" >
        
        <form method="POST" class="formulario sombra" action="/login"  >

            <?php foreach ($errores as $error): ?>
                <div class="alerta error">
                    <?php echo $error ?>
                </div>
            <?php endforeach; ?>

                <fieldset>
                    <legend>Login</legend>
                    <div class="contenedor-campos"><!-- Este campo nos ayudará a editar cada uno por individual-->
        
                        <div class="campo">
                            <label>Correo</label>
                            <input class="input-text" type="email" placeholder="Tu email" name="email" require >
                        </div>
                        
                        <div class="campo">
                            <label>Contraseña</label>
                            <input  class="input-text" type="password" placeholder="Tu constraseña" name="contrasena" require>
                        </div>
                    </div> <!-- Contenedor de los campos-->
                    <div class="contenedor_boton"> <!-- Dos clases-->
                        <input class="boton-admin" type="submit" value="Entrar">
                    </div>
                </fieldset>
        </form>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br>
    <section class="relleno"></section>
