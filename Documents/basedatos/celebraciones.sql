create database celebraciones;

use celebraciones;

CREATE TABLE dias_celebracion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    tipo VARCHAR(50) DEFAULT 'Nacional',  -- Tipo de celebración (Nacional, Religiosa, Internacional, etc.)
    es_feriado BOOLEAN DEFAULT FALSE      -- Indica si es un día feriado oficial
);

INSERT INTO dias_celebracion (fecha, nombre, descripcion, tipo, es_feriado) VALUES
('2024-10-27', 'DIA DEL HOMBRE', 'celebren se logro.', 'Internacional', TRUE),
('2024-01-01', 'Año Nuevo', 'Celebración del primer día del año.', 'Internacional', TRUE),
('2024-04-01', 'Jueves Santo', 'Día de conmemoración religiosa del Jueves Santo.', 'Religioso', TRUE),
('2024-04-02', 'Viernes Santo', 'Conmemoración de la crucifixión de Jesús.', 'Religioso', TRUE),
('2024-05-01', 'Día del Trabajo', 'Celebración internacional del día de los trabajadores.', 'Internacional', TRUE),
('2024-06-24', 'Día de San Juan', 'Celebración religiosa en la Amazonía peruana.', 'Regional', FALSE),
('2024-06-29', 'San Pedro y San Pablo', 'Festividad en honor a San Pedro y San Pablo.', 'Religioso', TRUE),
('2024-07-28', 'Día de la Independencia', 'Conmemoración de la independencia de Perú.', 'Nacional', TRUE),
('2024-07-29', 'Fiestas Patrias', 'Segunda celebración de las fiestas patrias peruanas.', 'Nacional', TRUE),
('2024-08-30', 'Día de Santa Rosa de Lima', 'Celebración en honor a Santa Rosa, patrona de América.', 'Religioso', TRUE),
('2024-10-08', 'Combate de Angamos', 'Conmemoración del combate naval de Angamos.', 'Nacional', TRUE),
('2024-11-01', 'Día de Todos los Santos', 'Celebración religiosa en honor a todos los santos.', 'Religioso', FALSE),
('2024-12-08', 'Día de la Inmaculada Concepción', 'Celebración religiosa dedicada a la Virgen María.', 'Religioso', TRUE),
('2024-12-25', 'Navidad', 'Celebración del nacimiento de Jesucristo.', 'Religioso', TRUE);


SELECT * FROM dias_celebracion WHERE tipo IN ('Nacional', 'Regional') ORDER BY fecha;


SELECT * FROM dias_celebracion WHERE es_feriado = TRUE ORDER BY fecha;


SELECT * FROM dias_celebracion WHERE MONTH(fecha) = 7;  -- Ejemplo: julio (mes de las fiestas patrias)

SELECT * FROM dias_celebracion WHERE tipo = 'Religioso' ORDER BY fecha;
SELECT * FROM dias_celebracion WHERE fecha = CURDATE();



SHOW DATABASES;

GRANT ALL PRIVILEGES ON celebraciones.* TO 'admin'@'%';
FLUSH PRIVILEGES;
