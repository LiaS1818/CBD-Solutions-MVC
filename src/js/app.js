document.addEventListener('DOMContentLoaded', function() { //callback
    eventListeners();

    darkMode();
});

function darkMode() {
    const botonDarkMode = document.querySelector('.dark-mode-boton');
    botonDarkMode.addEventListener('click', function(){
        document.body.classList.toggle('dark-mode');
    });
}

function eventListeners() {
    const mobileMenu = document.querySelector('.mobile-menu');

    mobileMenu.addEventListener('click', navegacionResponsive);

    //Muestra campos condicionales
    const metodoContacto = document.querySelectorAll('input[name="contacto[contacto]"]');
    metodoContacto.forEach(input => input.addEventListener('click', mostrarMetodosContacto));
    
}

function navegacionResponsive()
{
   const navegacion = document.querySelector('.navegacion-principal');

//    if(navegacion.classList.contains('mostrar')){
//         navegacion.classList.remove('mostrar');
//    }else{
//         navegacion.classList.add('mostrar');
//    }
// toggle es lo mismo que el if de arriba
navegacion.classList.toggle('mostrar');
}

function mostrarMetodosContacto (event){
    
    const contactoDiv = document.querySelector('#contacto');

    if (event.target.value === 'telefono') {
        contactoDiv.innerHTML = `
        <p> Elija la fecha y hora en la que quiere ser contactado </p>
        <label for="fecha">Fecha:</label>
        <input type="date" id="fecha" name="contacto[fecha]">         
        <label for="hora">Hora:</label>
        <input type="time" id="hora" min="09:00" max="18:00" name="contacto[hora]">
        `;
    }else {
        contactoDiv.innerHTML = `
        <label for="email">Email:</label>
        <input type="email" placeholder="Tu Email" id="email" name="contacto[email]">
        
        `;
    }
}