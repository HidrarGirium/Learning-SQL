-- LEFT JOIN en SQL
-- =================

-- Introducción:
-- --------------
-- En SQL, la cláusula LEFT JOIN se utiliza para combinar filas de dos o más tablas basadas en una condición especificada, incluyendo todas las filas de la tabla de la izquierda (tabla A) y las filas coincidentes de la tabla de la derecha (tabla B). Si no hay coincidencias en la tabla de la derecha, se devolverán valores NULL.

-- Sintaxis:
-- ---------
-- La sintaxis básica de LEFT JOIN es la siguiente:
-- 
-- SELECT columnas
-- FROM tabla_izquierda
-- LEFT JOIN tabla_derecha ON condición_de_unión;
-- 
-- Donde:
-- - "columnas" son las columnas que deseamos seleccionar.
-- - "tabla_izquierda" es la primera tabla de la que queremos incluir todas las filas.
-- - "tabla_derecha" es la segunda tabla que deseamos combinar con la tabla izquierda.
-- - "condición_de_unión" es la condición que especifica cómo se deben combinar las filas de ambas tablas.

-- Ejemplo:
-- --------
-- Supongamos que tenemos dos tablas: "clientes" y "pedidos".
-- La tabla "clientes" contiene información sobre los clientes, como ID, nombre y correo electrónico.
-- La tabla "pedidos" contiene información sobre los pedidos realizados por los clientes, como ID de pedido, ID de cliente y fecha del pedido.

-- Queremos obtener una lista de todos los clientes junto con los detalles de sus pedidos, si los tienen.

-- Primero, creemos las tablas de ejemplo:

CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATE,
    cantidad INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Insertamos algunos datos de ejemplo en las tablas:

INSERT INTO clientes (cliente_id, nombre, email) VALUES
(1, 'Juan Pérez', 'juan@example.com'),
(2, 'María López', 'maria@example.com'),
(3, 'Carlos González', 'carlos@example.com');

INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, cantidad) VALUES
(1, 1, '2024-04-01', 3),
(2, 2, '2024-04-02', 1),
(3, 1, '2024-04-03', 2),
(4, 3, '2024-04-04', 4);

-- Ahora, utilizamos LEFT JOIN para combinar las tablas y obtener la lista de clientes con los detalles de sus pedidos (si los tienen):

SELECT c.nombre AS Nombre_Cliente, c.email AS Email_Cliente, p.pedido_id AS ID_Pedido, p.fecha_pedido AS Fecha_Pedido, p.cantidad AS Cantidad
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id;

-- Explicación:
-- ------------
-- En el ejemplo anterior, hemos utilizado LEFT JOIN para combinar las tablas "clientes" y "pedidos".
-- La condición de unión es que el ID del cliente en la tabla "clientes" sea igual al ID del cliente en la tabla "pedidos".
-- Esto garantiza que obtengamos todas las filas de la tabla "clientes" (incluso si no tienen pedidos) y las filas coincidentes de la tabla "pedidos".
-- Si un cliente no tiene ningún pedido, los valores de las columnas de la tabla "pedidos" serán NULL en la salida.

-- Resultado:
-- -----------
-- | Nombre_Cliente | Email_Cliente    | ID_Pedido | Fecha_Pedido | Cantidad |
-- |----------------|------------------|-----------|--------------|----------|
-- | Juan Pérez     | juan@example.com | 1         | 2024-04-01   | 3        |
-- | Juan Pérez     | juan@example.com | 3         | 2024-04-03   | 2        |
-- | María López    | maria@example.com| 2         | 2024-04-02   | 1        |
-- | Carlos González| carlos@example.com| 4        | 2024-04-04   | 4        |
-- |----------------|------------------|-----------|--------------|----------|

-- Como se puede ver en el resultado, se incluyen todas las filas de la tabla "clientes" y las filas coincidentes de la tabla "pedidos", mostrando los detalles del pedido si están disponibles, de lo contrario, los valores de las columnas de la tabla "pedidos" son NULL.

-- Conclusión:
-- -----------
-- LEFT JOIN es una herramienta poderosa en SQL para combinar datos de dos o más tablas, especialmente cuando queremos incluir todas las filas de una tabla incluso si no tienen coincidencias en la otra tabla. Esto es útil para consultas que requieren información completa de una tabla principal junto con información opcional de otra tabla relacionada.
