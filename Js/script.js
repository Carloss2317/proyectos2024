document.addEventListener('DOMContentLoaded', function () {
    const semanaLink = document.getElementById('semana-link');
    const submenu = document.getElementById('semana-submenu');
    const semanaItems = submenu.querySelectorAll('li a'); // Seleccionamos todos los enlaces de las semanas
    const navItems = document.querySelectorAll('nav ul li'); // Seleccionamos todos los elementos de la lista en el nav

    // Evento para abrir/cerrar el submenú y mover el enlace
    semanaLink.addEventListener('click', function (e) {
        e.preventDefault(); // Evitar que el enlace recargue la página
        submenu.classList.toggle('show'); // Alternar la clase 'show' para mostrar u ocultar el submenú

        // Mover el enlace "Semana" a la izquierda
        navItems.forEach(item => {
            item.classList.remove('active'); // Eliminar la clase 'active' de todos los elementos
        });
        semanaLink.parentElement.classList.toggle('active'); // Alternar la clase 'active' en el enlace "Semana"
    });

    // Evento para cerrar el submenú al seleccionar una semana
    semanaItems.forEach(item => {
        item.addEventListener('click', function () {
            submenu.classList.remove('show'); // Cerrar el submenú
            navItems.forEach(i => i.classList.remove('active')); // Eliminar la clase 'active' de todos los elementos
        });
    });
});
