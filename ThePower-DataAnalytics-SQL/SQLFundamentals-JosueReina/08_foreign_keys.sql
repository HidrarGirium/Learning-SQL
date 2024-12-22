-- Lección sobre Foreign Keys en SQL

-- Qué son las Foreign Keys:
-- Las Foreign Keys son restricciones que se aplican a una o más columnas en una tabla para garantizar la integridad referencial entre dos tablas relacionadas en una base de datos relacional.

-- Ventajas de las Foreign Keys:
-- 1. Mantenimiento de la integridad de los datos: Las Foreign Keys garantizan que no se puedan insertar valores que violen la relación entre las tablas.
-- 2. Ayuda en la normalización de la base de datos: Permiten mantener la coherencia y la consistencia de los datos distribuidos en varias tablas.

-- Sintaxis para crear Foreign Keys:

-- Formato:
-- ALTER TABLE tabla_destino
-- ADD CONSTRAINT nombre_de_la_fk FOREIGN KEY (columna_fk)
-- REFERENCES tabla_fuente (columna_fuente);

-- Ejemplo:

-- Creación de la tabla de usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(100)
);

-- Creación de la tabla de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    id_usuario INT,
    fecha_pedido DATE,
    cantidad INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- En este ejemplo, la Foreign Key "id_usuario" en la tabla "pedidos" referencia la columna "id" en la tabla "usuarios".

-- Acciones en las Foreign Keys:

-- 1. ON DELETE CASCADE: Si se elimina un registro en la tabla padre, se eliminan automáticamente los registros relacionados en la tabla hija.
-- 2. ON UPDATE CASCADE: Si se actualiza un valor en la columna referenciada de la tabla padre, se actualizan automáticamente los valores correspondientes en la tabla hija.

-- Ejemplo de uso de acciones en Foreign Keys:

-- ALTER TABLE pedidos
-- ADD CONSTRAINT fk_usuario
-- FOREIGN KEY (id_usuario)
-- REFERENCES usuarios(id)
-- ON DELETE CASCADE
-- ON UPDATE CASCADE;

-- En este ejemplo, si se elimina un usuario de la tabla "usuarios", todos los pedidos asociados a ese usuario también se eliminarán automáticamente.

-- NOTA: Las acciones ON DELETE y ON UPDATE pueden variar según el motor de base de datos que estés utilizando (por ejemplo, MySQL, PostgreSQL, SQL Server, etc.). Es importante consultar la documentación específica del motor de base de datos que estés utilizando.

-- Comprobación de las Foreign Keys:

-- Para verificar que las Foreign Keys están configuradas correctamente, puedes ejecutar la siguiente consulta:

-- SHOW CREATE TABLE nombre_de_la_tabla;

-- Esto mostrará la definición completa de la tabla, incluidas las restricciones de Foreign Key.

-- Ejemplo:

-- SHOW CREATE TABLE pedidos;

-- Resultado:
-- CREATE TABLE pedidos (
--    id INT PRIMARY KEY,
--    id_usuario INT,
--    fecha_pedido DATE,
--    cantidad INT,
--    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
-- );

-- Esto mostrará la definición completa de la tabla "pedidos", incluida la Foreign Key "id_usuario" que hace referencia a la tabla "usuarios".

-- Conclusión:

-- Las Foreign Keys son una parte fundamental de la integridad de los datos en una base de datos relacional. Su correcta utilización garantiza la consistencia y la coherencia de los datos, lo que facilita el mantenimiento y la manipulación de la base de datos.

