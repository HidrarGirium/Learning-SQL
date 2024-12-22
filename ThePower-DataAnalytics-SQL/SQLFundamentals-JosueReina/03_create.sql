-- Creación de una tabla llamada "Empleados"
CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    Salario DECIMAL(10, 2)
);
/* En este ejemplo:

CREATE TABLE es la sintaxis para crear una nueva tabla en una base de datos.
Empleados es el nombre de la tabla que estamos creando.
(ID INT PRIMARY KEY, Nombre VARCHAR(50), Apellido VARCHAR(50), Edad INT, Salario DECIMAL(10, 2)) es la lista de columnas y tipos de datos que queremos que tenga la tabla.
Explicación de las columnas:

ID es un número entero que servirá como clave primaria (PRIMARY KEY) para identificar de manera única cada registro en la tabla.
Nombre y Apellido son cadenas de texto (VARCHAR) con una longitud máxima de 50 caracteres.
Edad es un número entero.
Salario es un número decimal (DECIMAL) que puede tener un máximo de 10 dígitos en total, con 2 dígitos reservados para los decimales.
La clave primaria (PRIMARY KEY) se utiliza para garantizar que cada fila de la tabla tenga una identificación única. Esta es una parte importante del diseño de la base de datos para mantener la integridad de los datos.

Este es un ejemplo básico para empezar, pero hay muchas otras opciones y ajustes que se pueden hacer al crear tablas en SQL, dependiendo de las necesidades específicas del proyecto. *\