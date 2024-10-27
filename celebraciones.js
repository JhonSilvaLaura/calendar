document.addEventListener("DOMContentLoaded", () => {
    const anuncio = document.getElementById('anuncio'); // Asegúrate de que el elemento con id 'anuncio' existe

    console.log('Intentando obtener el día importante...'); // Mensaje de intento

    fetch('http://localhost:4000/dia-importante') // Asegúrate de que esta URL es correcta
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok: ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            console.log('Datos recibidos:', data); // Verificar datos

            if (Array.isArray(data) && data.length > 0) {
                const { nombre, descripcion } = data[0];
                anuncio.innerHTML = `<strong>Hoy es ${nombre}:</strong> ${descripcion} <button id="cerrar-anuncio">Cerrar</button>`;
                anuncio.style.display = 'block';  // Mostrar anuncio

                // Agregar evento para el botón "Cerrar"
                document.getElementById('cerrar-anuncio').addEventListener('click', () => {
                    anuncio.style.display = 'none';
                });
            } else {
                console.log('No hay días importantes para mostrar.');
            }
        })
        .catch(error => {
            console.error('Error al obtener el día importante:', error);
            alert('Ocurrió un error: ' + error.message);
        });
});
