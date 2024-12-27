-- Ejercicio 3 Nivel de dificultad: Difícil
-- 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre TEXT,
    precio NUMERIC
);

-- 2. Inserta al menos cinco registros en la tabla "Productos".
INSERT INTO Productos (id, nombre, precio)
VALUES (1, 'Camiseta', 25.50),
       (2, 'Pantalón', 45.30),
       (3, 'Zapatos', 60.00),
       (4, 'Sombrero', 15.00),
       (5, 'Bufanda', 30.00);

-- 3. Actualiza el precio de un producto en la tabla "Productos".
UPDATE Productos
SET precio = 55.00
WHERE id = 1;

-- 4. Elimina un producto de la tabla "Productos".
DELETE FROM Productos
WHERE id = 2;

-- 5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").
SELECT Usuarios.nombre, Productos.nombre
FROM Usuarios
INNER JOIN Pedidos ON Usuarios.id = Pedidos.cliente_id
INNER JOIN Productos ON Pedidos.producto_id = Productos.id;