-- Actualización de datos con la sentencia UPDATE

-- Supongamos que tenemos una tabla llamada 'empleados' con la siguiente estructura:
-- | id_empleado | nombre      | apellido    | salario |
-- |-------------|-------------|-------------|---------|
-- | 1           | Juan        | Perez       | 3000    |
-- | 2           | Maria       | Lopez       | 3500    |
-- | 3           | Pedro       | Ramirez     | 3200    |
-- | 4           | Laura       | Gonzalez    | 2800    |

-- Ahora, imaginemos que necesitamos actualizar el salario de un empleado específico. Por ejemplo, queremos aumentar el salario de 'Pedro Ramirez' a 3500.

-- La sentencia UPDATE se utiliza para modificar datos en una tabla. La sintaxis básica es la siguiente:
-- UPDATE nombre_tabla
-- SET columna1 = valor1, columna2 = valor2, ...
-- WHERE condición;

-- En nuestro caso, la sentencia para aumentar el salario de Pedro sería:

UPDATE empleados
SET salario = 3500
WHERE nombre = 'Pedro' AND apellido = 'Ramirez';

-- Después de ejecutar esta sentencia, la tabla de empleados se vería así:
-- | id_empleado | nombre      | apellido    | salario |
-- |-------------|-------------|-------------|---------|
-- | 1           | Juan        | Perez       | 3000    |
-- | 2           | Maria       | Lopez       | 3500    |
-- | 3           | Pedro       | Ramirez     | 3500    |
-- | 4           | Laura       | Gonzalez    | 2800    |

-- Ahora, el salario de Pedro Ramirez se ha actualizado a 3500.

-- Si queremos actualizar múltiples columnas al mismo tiempo, simplemente agregamos más pares columna = valor en la cláusula SET.

-- Por ejemplo, si también queremos cambiar el apellido de 'Laura Gonzalez' a 'Garcia' y su salario a 3000, la sentencia sería:

UPDATE empleados
SET apellido = 'Garcia', salario = 3000
WHERE nombre = 'Laura' AND apellido = 'Gonzalez';

-- Después de ejecutar esta sentencia, la tabla de empleados se vería así:
-- | id_empleado | nombre      | apellido    | salario |
-- |-------------|-------------|-------------|---------|
-- | 1           | Juan        | Perez       | 3000    |
-- | 2           | Maria       | Lopez       | 3500    |
-- | 3           | Pedro       | Ramirez     | 3500    |
-- | 4           | Laura       | Garcia      | 3000    |

-- Ahora, el apellido de Laura Gonzalez se ha cambiado a Garcia y su salario a 3000.

-- Es importante recordar siempre incluir una cláusula WHERE al utilizar la sentencia UPDATE para asegurarse de que solo se actualicen los registros deseados.
