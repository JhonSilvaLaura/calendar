const express = require('express');
const mysql = require('mysql2');
const cors = require('cors'); // Importar cors
const app = express();
const port = 4000;

// Habilitar CORS
app.use(cors()); // Esto habilita CORS para todas las rutas

// Conexión a la base de datos
const db = mysql.createConnection({
    host: 'web2.cwo5bca6bz3b.us-east-1.rds.amazonaws.com',
    user: 'admin',     // Reemplaza con tu usuario de MySQL
    password: 'jhonbrayansilva', // Reemplaza con tu contraseña de MySQL
    database: 'celebraciones'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Conectado a la base de datos MySQL');
});

// Ruta para obtener el día de celebración actual
app.get('/dia-importante', (req, res) => {
    const hoy = new Date().toISOString().split('T')[0]; // Fecha en formato 'YYYY-MM-DD'

    db.query('SELECT * FROM dias_celebracion WHERE fecha = ?', [hoy], (error, results) => {
        if (error) {
            console.error('Error en la consulta a la base de datos:', error);
            return res.status(500).json({ error: 'Error en la base de datos' });
        }
        
        if (results.length > 0) {
            res.json(results); // Envía los resultados en formato JSON
        } else {
            res.json([]); // Envía un arreglo vacío si no hay resultados
        }
    });
});

// Servir archivos estáticos (HTML y JavaScript)
app.use(express.static('public'));

app.listen(port, () => {
    console.log(`Servidor ejecutándose en http://localhost:${port}`);
});
