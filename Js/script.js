document.addEventListener('DOMContentLoaded', () => {
    const cursos = document.querySelectorAll('.curso');

    cursos.forEach(curso => {
        curso.addEventListener('click', (event) => {
            event.preventDefault(); // Evita el comportamiento por defecto del enlace
            const semanaSlider = curso.nextElementSibling;

            // Verifica si el slider de semanas está visible
            if (semanaSlider.style.display === "block") {
                semanaSlider.style.display = "none"; // Ocultar las semanas
            } else {
                // Ocultar todos los sliders de semanas
                document.querySelectorAll('.semana-slider').forEach(slider => {
                    slider.style.display = "none";
                });
                semanaSlider.style.display = "block"; // Mostrar las semanas del curso clicado
            }
        });

        // Doble clic para ir a la página de semanas
        curso.addEventListener('dblclick', () => {
            window.location.href = "semanas.html"; // Redirigir a semanas.html
        });
    });
});
// script.js

// Seleccionamos el botón y el menú lateral
const menuBtn = document.getElementById('menuBtn');
const menuLateral = document.getElementById('menuLateral');

// Agregamos un evento de clic para mostrar/ocultar el menú
menuBtn.addEventListener('click', () => {
    menuLateral.classList.toggle('active');
});
