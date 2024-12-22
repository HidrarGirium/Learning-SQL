-- LECCIÓN: CREACIÓN DE TABLAS EN SQL

-- Introducción:
-- En SQL, las tablas son estructuras fundamentales que almacenan datos de manera organizada. La creación de tablas es el primer paso para diseñar una base de datos relacional. En esta lección, aprenderemos a crear tablas en SQL.

-- 1. Sintaxis básica de la creación de tablas:

CREATE TABLE nombre_tabla (
    columna1 tipo_dato_restricciones,
    columna2 tipo_dato_restricciones,
    ...
);

-- "nombre_tabla" es el nombre que le daremos a la tabla.
-- "columna1", "columna2", etc., son los nombres de las columnas que queremos incluir en la tabla.
-- "tipo_dato" es el tipo de datos que almacenará la columna (e.g., VARCHAR, INT, DATE, etc.).
-- "restricciones" son reglas adicionales que podemos aplicar a las columnas (e.g., NOT NULL, PRIMARY KEY, FOREIGN KEY, etc.).

-- 2. Ejemplo de creación de tabla:

CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(ID)
);

-- En este ejemplo, creamos una tabla llamada "Empleados" con cuatro columnas:
-- - "ID" es una columna de tipo INT y se define como la clave primaria (PRIMARY KEY).
-- - "Nombre" es una columna de tipo VARCHAR que puede almacenar hasta 50 caracteres.
-- - "Edad" es una columna de tipo INT.
-- - "DepartamentoID" es una columna de tipo INT que actúa como una clave externa (FOREIGN KEY) que referencia la columna "ID" en la tabla "Departamentos".

-- 3. Restricciones comunes:

-- - PRIMARY KEY: Identifica de manera única cada fila en la tabla. No puede contener valores nulos y solo puede haber una clave primaria por tabla.
-- - FOREIGN KEY: Establece una relación entre dos tablas. La clave externa en una tabla hace referencia a la clave primaria en otra tabla.
-- - NOT NULL: Indica que la columna no puede contener valores nulos.
-- - UNIQUE: Garantiza que los valores en la columna son únicos.
-- - DEFAULT: Especifica un valor predeterminado para la columna cuando no se proporciona ningún valor en la inserción de datos.
-- - CHECK: Permite especificar una condición para los valores permitidos en una columna.

-- ¡Practiquemos! Utiliza esta sintaxis para crear tus propias tablas y experimentar con diferentes tipos de datos y restricciones en SQL.
