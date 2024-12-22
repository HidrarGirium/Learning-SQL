-- Lección sobre INNER JOIN en SQL

-- Introducción a INNER JOIN
/*
INNER JOIN es un tipo de operación de combinación de tablas en SQL que combina registros de dos tablas basándose en una condición de igualdad entre columnas de esas tablas. 
Solo incluye los registros que tienen coincidencias en ambas tablas.
*/

-- Ejemplo de uso de INNER JOIN

-- Supongamos que tenemos dos tablas: "clientes" y "pedidos"
-- La tabla "clientes" contiene información sobre los clientes, y la tabla "pedidos" contiene información sobre los pedidos realizados por esos clientes.

-- Tabla "clientes"
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100)
);

-- Tabla "pedidos"
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Insertar datos de ejemplo en las tablas
INSERT INTO clientes (cliente_id, nombre, apellido, email) VALUES
(1, 'Juan', 'Pérez', 'juan@example.com'),
(2, 'María', 'González', 'maria@example.com'),
(3, 'Pedro', 'López', 'pedro@example.com');

INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total) VALUES
(1, 1, '2024-04-01', 50.00),
(2, 2, '2024-04-02', 75.00),
(3, 1, '2024-04-03', 100.00),
(4, 3, '2024-04-04', 30.00),
(5, 2, '2024-04-05', 45.00);

-- Consulta utilizando INNER JOIN para obtener los clientes y sus pedidos
SELECT c.nombre, c.apellido, p.fecha_pedido, p.total
FROM clientes c
INNER JOIN pedidos p ON c.cliente_id = p.cliente_id;

-- Explicación de la consulta:
/*
- La cláusula INNER JOIN combina las filas de las tablas "clientes" y "pedidos" donde el valor de la columna "cliente_id" es igual en ambas tablas.
- Se seleccionan las columnas "nombre" y "apellido" de la tabla "clientes", y las columnas "fecha_pedido" y "total" de la tabla "pedidos".
- Los resultados muestran el nombre y apellido de los clientes junto con la fecha y el total de cada pedido realizado por esos clientes.
*/

-- Conclusiones
/*
INNER JOIN es una herramienta poderosa para combinar datos de múltiples tablas en SQL. Se utiliza para obtener información relacionada de dos o más tablas, basándose en una condición de igualdad entre columnas específicas.
Al usar INNER JOIN, se obtienen únicamente las filas que tienen coincidencias en ambas tablas, lo que significa que solo se incluyen los registros que satisfacen la condición de unión.
Esto hace que INNER JOIN sea útil para consultas que requieren datos relacionados entre tablas, ya que garantiza que solo se obtengan los resultados relevantes.
*/

