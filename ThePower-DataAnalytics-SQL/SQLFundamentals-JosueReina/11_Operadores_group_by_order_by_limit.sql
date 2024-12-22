-- Lección sobre Operadores: GROUP BY, ORDER BY, LIMIT

-- Creación de una tabla de ejemplo para ilustrar los operadores
CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2)
);

-- Inserción de datos de ejemplo
INSERT INTO productos (id, nombre, categoria, precio) VALUES
(1, 'Camisa', 'Ropa', 25.99),
(2, 'Pantalón', 'Ropa', 35.99),
(3, 'Zapatos', 'Calzado', 49.99),
(4, 'Teléfono', 'Electrónica', 399.99),
(5, 'Tablet', 'Electrónica', 299.99),
(6, 'Gafas de sol', 'Accesorios', 15.99);

-- Operador GROUP BY: Agrupación de filas basada en valores similares en una columna
SELECT categoria, COUNT(*) AS cantidad_productos
FROM productos
GROUP BY categoria;

-- Operador ORDER BY: Ordenamiento de los resultados basado en una o más columnas
SELECT *
FROM productos
ORDER BY precio DESC;

-- Operador LIMIT: Limitación de la cantidad de filas devueltas por una consulta
SELECT *
FROM productos
ORDER BY precio DESC
LIMIT 3;
