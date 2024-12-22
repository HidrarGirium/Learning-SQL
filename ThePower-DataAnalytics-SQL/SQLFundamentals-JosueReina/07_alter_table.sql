-- Operaciones Básicas: ALTER TABLE en SQL --

/* 
   La instrucción ALTER TABLE se utiliza para modificar una tabla existente en una base de datos.
   Esto puede implicar agregar, modificar o eliminar columnas, así como cambiar otras propiedades
   de la tabla, como su nombre o las restricciones de clave primaria.

   Aquí están las operaciones básicas que se pueden realizar con ALTER TABLE:
*/

-- 1. Agregar una columna a una tabla existente --
ALTER TABLE NombreDeTabla
ADD NombreDeColumna TipoDeDato [Restricciones];

-- Ejemplo: Agregar una columna 'Edad' de tipo INT a la tabla 'Usuarios'
ALTER TABLE Usuarios
ADD Edad INT;

-- 2. Modificar el tipo de datos de una columna existente --
ALTER TABLE NombreDeTabla
ALTER COLUMN NombreDeColumna NuevoTipoDeDato;

-- Ejemplo: Cambiar el tipo de dato de la columna 'Edad' a VARCHAR(50) en la tabla 'Usuarios'
ALTER TABLE Usuarios
ALTER COLUMN Edad VARCHAR(50);

-- 3. Renombrar una columna en una tabla existente --
ALTER TABLE NombreDeTabla
RENAME COLUMN NombreColumnaExistente TO NuevoNombreColumna;

-- Ejemplo: Cambiar el nombre de la columna 'Edad' a 'Años' en la tabla 'Usuarios'
ALTER TABLE Usuarios
RENAME COLUMN Edad TO Años;

-- 4. Eliminar una columna de una tabla existente --
ALTER TABLE NombreDeTabla
DROP COLUMN NombreDeColumna;

-- Ejemplo: Eliminar la columna 'Años' de la tabla 'Usuarios'
ALTER TABLE Usuarios
DROP COLUMN Años;

-- 5. Cambiar el nombre de una tabla existente --
ALTER TABLE NombreDeTablaExistente
RENAME TO NuevoNombreDeTabla;

-- Ejemplo: Cambiar el nombre de la tabla 'Usuarios' a 'Clientes'
ALTER TABLE Usuarios
RENAME TO Clientes;

/* 
   Recuerda siempre tener cuidado al realizar cambios en la estructura de una tabla,
   especialmente si ya contiene datos. Es recomendable hacer una copia de seguridad
   antes de realizar cambios importantes con la instrucción ALTER TABLE.
*/
