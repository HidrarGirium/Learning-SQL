-- Lección sobre Subconsultas en SQL

-- Introducción a las Subconsultas
/*
Las subconsultas, también conocidas como subqueries, son consultas anidadas dentro de otra consulta SQL. 
Estas consultas pueden ser utilizadas en varias partes de una consulta, como en la cláusula SELECT, FROM, WHERE, etc. 
Las subconsultas son útiles cuando necesitas realizar operaciones complejas que requieren resultados de múltiples consultas.
*/

-- Sintaxis Básica
/*
La sintaxis básica de una subconsulta es:
SELECT column1, column2, ...
FROM table1
WHERE columnN operator (SELECT column1, column2, ...
                       FROM table2
                       WHERE conditions);
*/

-- Ejemplo de Subconsulta en la cláusula WHERE
/*
Supongamos que tenemos dos tablas: 'customers' y 'orders'. Queremos encontrar los clientes que han realizado pedidos.
*/
SELECT customer_name
FROM customers
WHERE customer_id IN (SELECT customer_id
                      FROM orders);

-- Ejemplo de Subconsulta Correlacionada
/*
Una subconsulta correlacionada es aquella en la que la subconsulta depende de la consulta externa.
En este ejemplo, queremos encontrar los clientes que han realizado más pedidos que el promedio.
*/
SELECT customer_name
FROM customers c
WHERE (SELECT COUNT(*)
       FROM orders o
       WHERE o.customer_id = c.customer_id) > (SELECT AVG(order_count)
                                                FROM (SELECT COUNT(*) AS order_count
                                                      FROM orders
                                                      GROUP BY customer_id) AS order_counts);

-- Ejemplo de Subconsulta Escalar
/*
Una subconsulta escalar devuelve un único valor.
Supongamos que queremos encontrar el cliente con el número de pedido más alto.
*/
SELECT customer_name
FROM customers
WHERE customer_id = (SELECT customer_id
                     FROM orders
                     ORDER BY order_number DESC
                     LIMIT 1);

-- Ejemplo de Subconsulta en la cláusula FROM
/*
En este ejemplo, queremos encontrar el número total de pedidos realizados por cada cliente.
*/
SELECT c.customer_name, order_count.total_orders
FROM customers c
JOIN (SELECT customer_id, COUNT(*) AS total_orders
      FROM orders
      GROUP BY customer_id) AS order_count
ON c.customer_id = order_count.customer_id;

-- Conclusiones
/*
Las subconsultas son una herramienta poderosa en SQL que permite realizar consultas complejas y realizar operaciones avanzadas en los datos.
Es importante comprender cuándo y cómo usar subconsultas para aprovechar al máximo su potencial en el desarrollo de bases de datos.
*/

-- Fin de la Lección
