-- Lección sobre la cláusula HAVING en SQL

-- 1. Introducción
-- La cláusula HAVING se utiliza junto con la cláusula GROUP BY para filtrar grupos de filas basadas en una condición. Mientras que la cláusula WHERE se utiliza para filtrar filas individuales, la cláusula HAVING se aplica a grupos de filas.

-- 2. Sintaxis básica
SELECT column1, column2, aggregate_function(column3)
FROM table_name
GROUP BY column1, column2
HAVING condition;

-- 3. Ejemplo de uso
-- Supongamos que tenemos una tabla llamada "orders" que almacena información sobre pedidos y queremos encontrar el total de ventas por cada cliente cuyo total de ventas sea mayor que 1000:
SELECT customer_id, SUM(total_sales) AS total_sales
FROM orders
GROUP BY customer_id
HAVING SUM(total_sales) > 1000;

-- 4. Notas importantes
-- a. La cláusula HAVING solo se puede utilizar en consultas que también incluyan una cláusula GROUP BY.
-- b. La condición en la cláusula HAVING puede hacer referencia a columnas que no están presentes en la lista de selección, siempre y cuando estas columnas estén en la lista GROUP BY.
-- c. Las funciones de agregación, como SUM(), COUNT(), AVG(), MAX(), MIN(), pueden utilizarse en la cláusula HAVING.

-- 5. Ejemplo práctico
-- Supongamos que tenemos una tabla llamada "sales" que almacena información sobre las ventas diarias de productos y queremos encontrar los productos cuyo promedio de ventas diarias sea superior a 50 unidades:
SELECT product_id, AVG(daily_sales) AS avg_daily_sales
FROM sales
GROUP BY product_id
HAVING AVG(daily_sales) > 50;

-- Conclusión
-- La cláusula HAVING es una herramienta poderosa en SQL que nos permite filtrar grupos de filas basados en condiciones específicas. Es particularmente útil cuando necesitamos aplicar condiciones a resultados de agregaciones, como SUM(), COUNT(), AVG(), etc.
