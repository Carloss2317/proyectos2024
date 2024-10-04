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
