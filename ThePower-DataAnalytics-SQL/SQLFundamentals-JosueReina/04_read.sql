-- Selección de todas las columnas de la tabla Empleados
SELECT * FROM Empleados;
/*En este ejemplo:

---SELECT es la palabra clave que indica que estamos realizando una operación de lectura.
* es un comodín que representa todas las columnas de la tabla.
FROM Empleados especifica de qué tabla queremos leer los datos. En este caso, estamos leyendo de la tabla llamada "Empleados".
Este comando devolverá todos los registros y todas las columnas de la tabla "Empleados".
*/

---Si solo queremos seleccionar ciertas columnas en lugar de todas, podemos hacerlo especificando los nombres de las columnas después de la palabra clave SELECT. Por ejemplo:

-- Selección de columnas específicas de la tabla Empleados
SELECT Nombre, Apellido, Edad FROM Empleados;

---En este caso, solo se devolverán las columnas "Nombre", "Apellido" y "Edad" de la tabla "Empleados".

---También podemos agregar condiciones utilizando la cláusula WHERE para filtrar los resultados. Por ejemplo:

-- Selección de empleados mayores de 30 años
SELECT * FROM Empleados WHERE Edad > 30;

---Esto devolverá solo los registros de la tabla "Empleados" donde la columna "Edad" sea mayor que 30.

---La cláusula SELECT es una de las operaciones más fundamentales en SQL y se utiliza para recuperar datos de una o más tablas en una base de datos. Con combinaciones de comandos SELECT, FROM y WHERE, podemos obtener los datos específicos que necesitamos para nuestras consultas.