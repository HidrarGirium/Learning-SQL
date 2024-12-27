-- Código SQL para crear las tablas
-- Tabla Alumnos
CREATE TABLE Alumnos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL
);

-- Tabla Cursos
CREATE TABLE Cursos (
    id SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    duracion_semanas INT NOT NULL,
    fecha_inicio DATE NOT NULL
);

-- Tabla Inscripciones
CREATE TABLE Inscripciones (
    id SERIAL PRIMARY KEY,
    alumno_id INT REFERENCES Alumnos(id),
    curso_id INT REFERENCES Cursos(id),
    fecha_inscripcion DATE NOT NULL
);

-- Tabla Participaciones
CREATE TABLE Participaciones (
    id SERIAL PRIMARY KEY,
    inscripcion_id INT REFERENCES Inscripciones(id),
    tipo_participacion VARCHAR(20) CHECK (tipo_participacion IN ('foro', 'github', 'clase')),
    fecha_participacion DATE NOT NULL
);

-- Población inicial de las tablas
-- Insertar datos en la tabla Alumnos
INSERT INTO Alumnos (nombre, apellidos) VALUES
('Juan', 'Pérez'),
('Ana', 'López');

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (nombre_curso, duracion_semanas, fecha_inicio) VALUES
('Curso SQL Básico', 6, '2024-01-01'),
('Curso Avanzado de Python', 8, '2024-01-15');

-- Insertar datos en la tabla Inscripciones
INSERT INTO Inscripciones (alumno_id, curso_id, fecha_inscripcion) VALUES
(1, 1, '2024-01-02'),
(2, 2, '2024-01-16');

-- Insertar datos en la tabla Participaciones
INSERT INTO Participaciones (inscripcion_id, tipo_participacion, fecha_participacion) VALUES
(1, 'foro', '2024-01-03'),
(2, 'clase', '2024-01-17');

-- Consultas SELECT para comprobar el esquema

-- 1. Mostrar todos los alumnos y sus datos.
SELECT * FROM Alumnos;

-- 2. Mostrar todos los cursos y sus datos.
SELECT * FROM Cursos;

-- 3. Ver las inscripciones con los nombres de los alumnos y los cursos a los que están inscritos.
SELECT 
    Inscripciones.id AS inscripcion_id,
    Alumnos.nombre AS alumno,
    Alumnos.apellidos AS apellidos,
    Cursos.nombre_curso AS curso,
    Inscripciones.fecha_inscripcion
FROM Inscripciones
JOIN Alumnos ON Inscripciones.alumno_id = Alumnos.id
JOIN Cursos ON Inscripciones.curso_id = Cursos.id;

-- 4. Mostrar las participaciones con los nombres de los alumnos y los tipos de participación.
SELECT 
    Participaciones.id AS participacion_id,
    Alumnos.nombre AS alumno,
    Cursos.nombre_curso AS curso,
    Participaciones.tipo_participacion,
    Participaciones.fecha_participacion
FROM Participaciones
JOIN Inscripciones ON Participaciones.inscripcion_id = Inscripciones.id
JOIN Alumnos ON Inscripciones.alumno_id = Alumnos.id
JOIN Cursos ON Inscripciones.curso_id = Cursos.id;

-- 5. Consultar cuántas participaciones ha tenido cada alumno por curso.
SELECT 
    Alumnos.nombre AS alumno,
    Cursos.nombre_curso AS curso,
    COUNT(Participaciones.id) AS total_participaciones
FROM Participaciones
JOIN Inscripciones ON Participaciones.inscripcion_id = Inscripciones.id
JOIN Alumnos ON Inscripciones.alumno_id = Alumnos.id
JOIN Cursos ON Inscripciones.curso_id = Cursos.id
GROUP BY Alumnos.nombre, Cursos.nombre_curso;


-- Consultas de alteración de tablas

-- Añadir una nueva columna "email" en la tabla Alumnos.
ALTER TABLE Alumnos ADD COLUMN email VARCHAR(100);

-- Modificar el tipo de datos de "duracion_semanas" en la tabla Cursos.
ALTER TABLE Cursos ALTER COLUMN duracion_semanas TYPE SMALLINT;

-- Eliminar la columna "email" en la tabla Alumnos.
ALTER TABLE Alumnos DROP COLUMN email;

-- Renombrar la columna "fecha_inscripcion" en la tabla Inscripciones a "fecha_inicio".
ALTER TABLE Inscripciones RENAME COLUMN fecha_inscripcion TO fecha_inicio;
