-- Introducción a SQL

-- SQL (Structured Query Language) es un lenguaje de programación diseñado para administrar y manipular bases de datos relacionales. En esta lección, aprenderemos los fundamentos de SQL, incluyendo la creación de bases de datos, tablas y consultas básicas.

-- 1. Creación de una Base de Datos

-- Para crear una base de datos en SQL, utilizamos la sentencia CREATE DATABASE seguida del nombre deseado para la base de datos. Por ejemplo:

CREATE DATABASE mi_base_de_datos;

-- 2. Creación de Tablas

-- Una vez que tenemos una base de datos creada, podemos comenzar a crear tablas para almacenar nuestros datos. Utilizamos la sentencia CREATE TABLE seguida del nombre de la tabla y la definición de las columnas. Por ejemplo:

CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    salario DECIMAL(10, 2)
);

-- En este ejemplo, hemos creado una tabla llamada 'empleados' con cuatro columnas: 'id', 'nombre', 'apellido' y 'salario'. La columna 'id' se ha definido como clave primaria utilizando la cláusula PRIMARY KEY.

-- 3. Inserción de Datos

-- Una vez que hemos creado una tabla, podemos insertar datos en ella utilizando la sentencia INSERT INTO. Por ejemplo:

INSERT INTO empleados (id, nombre, apellido, salario)
VALUES (1, 'Juan', 'Pérez', 30000.00),
       (2, 'María', 'González', 35000.00),
       (3, 'Carlos', 'López', 32000.00);

-- En este ejemplo, hemos insertado tres filas en la tabla 'empleados' con valores específicos para cada columna.

-- 4. Consultas Básicas

-- Una de las tareas más comunes en SQL es realizar consultas para recuperar datos de una tabla. Utilizamos la sentencia SELECT para esto. Por ejemplo:

SELECT * FROM empleados;

-- Esta consulta devolverá todos los registros de la tabla 'empleados'.

-- También podemos especificar columnas específicas que queremos recuperar:

SELECT nombre, salario FROM empleados;

-- Esta consulta devolverá solo las columnas 'nombre' y 'salario' de la tabla 'empleados'.

-- Además, podemos agregar condiciones utilizando la cláusula WHERE para filtrar los resultados:

SELECT * FROM empleados WHERE salario > 32000;

-- Esta consulta devolverá todos los empleados cuyo salario sea mayor que 32000.

-- 5. Actualización de Datos

-- Para actualizar registros en una tabla, utilizamos la sentencia UPDATE. Por ejemplo:

UPDATE empleados
SET salario = 35000
WHERE nombre = 'Juan';

-- Esta consulta actualizará el salario del empleado cuyo nombre sea 'Juan' a 35000.

-- 6. Eliminación de Datos

-- Para eliminar registros de una tabla, utilizamos la sentencia DELETE. Por ejemplo:

DELETE FROM empleados
WHERE id = 3;

-- Esta consulta eliminará el registro con el id 3 de la tabla 'empleados'.

-- Conclusión

-- Esta ha sido una introducción básica a SQL. A medida que avances, podrás aprender más sobre consultas avanzadas, manipulación de datos y optimización de consultas. ¡Practica mucho para mejorar tus habilidades en SQL!
