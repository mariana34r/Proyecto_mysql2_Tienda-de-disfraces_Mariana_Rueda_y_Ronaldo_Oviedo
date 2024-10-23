-- Crear un usuario administrador con acceso total

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password_admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- Crear un usuario vendedor con acceso limitado a ventas y gestión de inventario

CREATE USER 'vendedor'@'localhost' IDENTIFIED BY 'password_vendedor';
GRANT SELECT, INSERT, UPDATE ON tienda.ventas TO 'vendedor'@'localhost';
GRANT SELECT, UPDATE ON tienda.inventario TO 'vendedor'@'localhost';


-- Crear un usuario encargado de proveedores con acceso a las compras

CREATE USER 'encargado_proveedores'@'localhost' IDENTIFIED BY 'password_proveedor';
GRANT SELECT, INSERT, UPDATE ON tienda.compras TO 'encargado_proveedores'@'localhost';


-- Crear un usuario gerente con acceso a reportes financieros y control de empleados

CREATE USER 'gerente'@'localhost' IDENTIFIED BY 'password_gerente';
GRANT SELECT ON tienda.reportes_financieros TO 'gerente'@'localhost';
GRANT SELECT, UPDATE ON tienda.empleados TO 'gerente'@'localhost';


-- Crear un usuario encargado de almacén que puede revisar y actualizar los inventarios

CREATE USER 'encargado_almacen'@'localhost' IDENTIFIED BY 'password_almacen';
GRANT SELECT, UPDATE ON tienda.inventario TO 'encargado_almacen'@'localhost';


-- Mostrar los privilegios de los usuarios creados

SHOW GRANTS FOR 'admin'@'localhost';
SHOW GRANTS FOR 'vendedor'@'localhost';
SHOW GRANTS FOR 'encargado_proveedores'@'localhost';
SHOW GRANTS FOR 'gerente'@'localhost';
SHOW GRANTS FOR 'encargado_almacen'@'localhost';
