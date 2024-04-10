
<main class="contenedor seccion">
    <h1>Contacto</h1>
    <div class="imagen-contacto">
        <picture>
            <source srcset="imgs/contacto.jpeg" type="image/jpeg">
            <img src="imgs/contacto.jpeg" alt="imagen Contacto">
        </picture>
    </div>

    <h2>Llene el formulario de Contacto</h2>

    <form action="/contacto" method="POST" class="formulario contacto sombra">
        <div class="contenedor_form">

            <fieldset>
                <legend>Información Personal</legend>
                <div class="campo">
                    <label for="nombre">Nombre:</label>
                    <input type="text" placeholder="Tu Nombre" id="nombre" name="contacto[nombre]" >
                
                    <p>Como desea ser contactado</p> 
                </div>

                    <label for="contactar-telefono">Teléfono</label>
                    <input type="radio" value="telefono" id="contactar-telefono" name="contacto[contacto]">
                    
                    <label for="contactar-telefono">Email</label>
                    <input type="radio" value="email" id="contactar-email" name="contacto[contacto]">
                <div id="contacto"></div>
            </fieldset>
            <fieldset>
                <legend>Escribe tu Mensaje para nosotros</legend>
                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="contacto[mensaje]"></textarea>

            </fieldset>
            
            <fieldset>
                <legend>Información sobre Productos</legend>
                
                <label for="opciones">cliente o Socio:</label>
                <select id="opciones" name="contacto[opciones]">
                    <option value="" disabled selected>-- Selecione ---</option>
                    <option value="cliente">Cliente</option>
                    <option value="socio">Socio</option>
                </select>
            </fieldset>
        </div>

        <div class="contenedor_boton">
            <input type="submit" class="boton-check" value="Enviar" >
        </div>
    </form>
</main>
