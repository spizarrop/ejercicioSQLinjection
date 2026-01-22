/* Ver lista de usuarios */
SELECT user FROM mysql.user;

/* Ver permisos de un usuario */
SHOW GRANTS FOR 'usuario'@'localhost';

/* CREACION DE USUARIOS */
CREATE USER 'nuevo_usuario'@'localhost' IDENTIFIED BY '123456';
CREATE USER 'nuevo_admin'@'localhost' IDENTIFIED BY '123456';

/* USUARIO DE LA APP */
GRANT SELECT, INSERT, UPDATE, DELETE ON asociaciondle.* TO 'nuevo_usuario'@'localhost';
/* QUITAR PERMISO */
REVOKE SELECT, INSERT, UPDATE, DELETE ON asociaciondle.* FROM 'nuevo_usuario'@'localhost';

/* ADMINISTRADOR DE LA APP */
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE ON asociaciondle.* TO 'nuevo_admin'@'localhost';