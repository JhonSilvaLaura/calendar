/****creación de la base de datos ***/
CREATE DATABASE dbescuela;

/*** para el uso de la bd ***/
use dbescuela;


CREATE TABLE alumnos (
  id int(11) NOT NULL,
  nombres varchar(50) DEFAULT NULL,
  apellidos varchar(50) DEFAULT NULL,
  genero char(1) DEFAULT NULL,
  ciclo varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


/*** Mostrar datos en la tabla ***/
select * FROM Alumnos;
--
-- Volcado de datos para la tabla alumnos
--

INSERT INTO alumnos (id, nombres, apellidos, genero, ciclo) VALUES
(1, 'jhon', 'silva', 'M', 'ciclo 1'),
(2, '  Marco ', ' Infante   ', 'F', 'ciclo 1'),
(3, '  Marco ', ' Infante   ', 'F', 'ciclo 1'),
(4, ' jhon ', '  silva    ', 'M', 'ciclo 3'),
(22, '  vcsdcdsdc ', ' sddssd ', 'M', 'ciclo 2'),
(23, '  ddas ', ' ccac ', 'F', 'ciclo 3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla alumnos
--
ALTER TABLE alumnos
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla alumnos
--
ALTER TABLE alumnos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;