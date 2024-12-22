/* Lección sobre Consultas Avanzadas en SQL
Introducción
En esta lección, exploraremos algunas técnicas avanzadas para realizar consultas en SQL. Estas técnicas te permitirán manejar situaciones más complejas y extraer datos de manera más eficiente y precisa.

1. Uso de Subconsultas
Las subconsultas son consultas anidadas dentro de otra consulta. Pueden utilizarse en la cláusula SELECT, FROM, WHERE o cualquier otra parte de una consulta SQL.

Ejemplo:*/
SELECT nombre, apellido
FROM empleados
WHERE departamento_id IN (SELECT departamento_id FROM departamentos WHERE nombre = 'Ventas');

/*En este ejemplo, la subconsulta encuentra el ID del departamento de ventas y luego la consulta principal selecciona los nombres y apellidos de los empleados que pertenecen a ese departamento.

2. JOINs
Los JOINs se utilizan para combinar filas de dos o más tablas basadas en una columna relacionada entre ellas. Los tipos comunes de JOINs incluyen INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL JOIN.

Ejemplo:*/

SELECT empleados.nombre, departamentos.nombre
FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = departamentos.departamento_id;

/*Este ejemplo utiliza un INNER JOIN para combinar las filas de las tablas de empleados y departamentos basadas en el ID del departamento.

3. Funciones de Agregación
Las funciones de agregación se utilizan para realizar cálculos en un conjunto de valores y devolver un único valor resumido. Algunas funciones de agregación comunes son SUM(), AVG(), COUNT(), MAX() y MIN().

Ejemplo:*/

SELECT COUNT(*) AS total_empleados, AVG(edad) AS edad_promedio
FROM empleados;

/*Este ejemplo calcula el número total de empleados y la edad promedio de todos los empleados en la tabla.

4. Cláusula GROUP BY
La cláusula GROUP BY se utiliza para agrupar filas que tienen los mismos valores en una o más columnas. Se utiliza junto con funciones de agregación para realizar cálculos en cada grupo de filas.

Ejemplo:*/

SELECT departamento_id, COUNT(*) AS total_empleados
FROM empleados
GROUP BY departamento_id;

/*Este ejemplo cuenta el número total de empleados en cada departamento.

Conclusión
En esta lección, hemos explorado algunas técnicas avanzadas para realizar consultas en SQL, incluyendo el uso de subconsultas, JOINs, funciones de agregación y la cláusula GROUP BY. Estas técnicas te permitirán realizar consultas más complejas y extraer información de manera más eficiente en tus proyectos SQL.

¡Practica estos conceptos en Visual Studio Code para mejorar tus habilidades en SQL!*/
