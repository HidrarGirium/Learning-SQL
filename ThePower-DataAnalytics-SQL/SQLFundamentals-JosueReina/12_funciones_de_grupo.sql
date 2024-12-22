-- Lección sobre Funciones de Grupo en SQL

-- Introducción a las Funciones de Grupo
-- Las Funciones de Grupo son un conjunto de funciones en SQL que se utilizan para realizar cálculos en grupos de filas que comparten una característica común, como valores en una columna específica.

-- Ejemplo de tabla de estudiantes
CREATE TABLE estudiantes (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    curso VARCHAR(50),
    calificacion INT
);

-- Insertar datos de ejemplo
INSERT INTO estudiantes (id, nombre, edad, curso, calificacion) VALUES
(1, 'Juan', 20, 'Matemáticas', 85),
(2, 'María', 21, 'Matemáticas', 90),
(3, 'Pedro', 22, 'Matemáticas', 75),
(4, 'Ana', 20, 'Historia', 80),
(5, 'Luis', 21, 'Historia', 88),
(6, 'Laura', 22, 'Historia', 95);

-- Ejemplo de consulta con función de grupo (SUM)
-- Calcular la suma de las calificaciones por curso
SELECT curso, SUM(calificacion) AS suma_calificaciones
FROM estudiantes
GROUP BY curso;

-- Ejemplo de consulta con función de grupo (COUNT)
-- Contar el número de estudiantes por curso
SELECT curso, COUNT(*) AS cantidad_estudiantes
FROM estudiantes
GROUP BY curso;

-- Ejemplo de consulta con función de grupo (AVG)
-- Calcular el promedio de edad por curso
SELECT curso, AVG(edad) AS promedio_edad
FROM estudiantes
GROUP BY curso;

-- Ejemplo de consulta con función de grupo (MAX)
-- Encontrar la calificación máxima por curso
SELECT curso, MAX(calificacion) AS calificacion_maxima
FROM estudiantes
GROUP BY curso;

-- Ejemplo de consulta con función de grupo (MIN)
-- Encontrar la calificación mínima por curso
SELECT curso, MIN(calificacion) AS calificacion_minima
FROM estudiantes
GROUP BY curso;

/*En este ejemplo, creamos una tabla llamada "estudiantes" con información sobre los estudiantes, como su nombre, edad, curso y calificación. Luego, realizamos consultas utilizando varias funciones de grupo (SUM, COUNT, AVG, MAX, MIN) para realizar cálculos en grupos de filas según el curso. Esto nos permite obtener información resumida y estadísticas sobre los datos en la tabla.*/