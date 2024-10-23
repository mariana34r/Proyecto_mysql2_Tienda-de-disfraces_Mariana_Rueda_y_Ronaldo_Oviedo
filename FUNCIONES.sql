-- 1. Función para calcular el stock total de un producto por categoría
DELIMITER //
CREATE FUNCTION calcular_stock_categoria(cat VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_stock INT;
    SELECT SUM(stock) INTO total_stock
    FROM Productos
    WHERE categoria = cat;
    RETURN total_stock;
END //
DELIMITER ;

-- 2. Función para calcular el salario anual de un empleado
DELIMITER //
CREATE FUNCTION calcular_salario_anual(id_emp INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE salario_anual DECIMAL(10,2);
    SELECT salario * 12 INTO salario_anual
    FROM Empleados
    WHERE id_empleado = id_emp;
    RETURN salario_anual;
END //
DELIMITER ;

-- 3. Función para calcular el total de ventas de un cliente
DELIMITER //
CREATE FUNCTION total_ventas_cliente(id_cli INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(total_venta) INTO total
    FROM Ventas
    WHERE id_cliente = id_cli;
    RETURN total;
END //
DELIMITER ;

-- 4. Función para obtener el empleado con mayor salario
DELIMITER //
CREATE FUNCTION empleado_mayor_salario()
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE empleado_nombre VARCHAR(100);
    SELECT CONCAT(nombre, ' ', apellido) INTO empleado_nombre
    FROM Empleados
    ORDER BY salario DESC
    LIMIT 1;
    RETURN empleado_nombre;
END //
DELIMITER ;

-- 5. Función para obtener el producto más vendido
DELIMITER //
CREATE FUNCTION producto_mas_vendido()
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE producto_nombre VARCHAR(100);
    SELECT p.nombre INTO producto_nombre
    FROM Productos p
    JOIN Detalles_Venta dv ON p.id_producto = dv.id_producto
    GROUP BY p.nombre
    ORDER BY SUM(dv.cantidad) DESC
    LIMIT 1;
    RETURN producto_nombre;
END //
DELIMITER ;

-- 6. Función para calcular el stock de disfraces por debajo de cierto límite
DELIMITER //
CREATE FUNCTION disfraces_bajo_stock(limite INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE disfraces_bajos INT;
    SELECT COUNT(*) INTO disfraces_bajos
    FROM Disfraces
    WHERE stock < limite;
    RETURN disfraces_bajos;
END //
DELIMITER ;

-- 7. Función para calcular el costo promedio de un disfraz
DELIMITER //
CREATE FUNCTION costo_promedio_disfraz()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    SELECT AVG(precio) INTO promedio
    FROM Disfraces;
    RETURN promedio;
END //
DELIMITER ;

-- 8. Función para estimar el costo operativo mensual basado en los salarios
DELIMITER //
CREATE FUNCTION costo_operativo_mensual()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE costo DECIMAL(10,2);
    SELECT SUM(salario) INTO costo
    FROM Empleados;
    RETURN costo;
END //
DELIMITER ;

-- 9. Función para calcular el total de compras realizadas por un proveedor
DELIMITER //
CREATE FUNCTION total_compras_proveedor(id_prov INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(total_compra) INTO total
    FROM Compras
    WHERE id_proveedor = id_prov;
    RETURN total;
END //
DELIMITER ;

-- 10. Función para calcular el total de productos vendidos en una fecha específica
DELIMITER //
CREATE FUNCTION total_productos_vendidos(fecha DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(cantidad) INTO total
    FROM Detalles_Venta
    WHERE fecha_venta = fecha;
    RETURN total;
END //
DELIMITER ;

-- 11. Función para obtener el proveedor con más compras realizadas
DELIMITER //
CREATE FUNCTION proveedor_con_mas_compras()
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE proveedor_nombre VARCHAR(100);
    SELECT p.nombre INTO proveedor_nombre
    FROM Proveedores p
    JOIN Compras c ON p.id_proveedor = c.id_proveedor
    GROUP BY p.nombre
    ORDER BY COUNT(c.id_compra) DESC
    LIMIT 1;
    RETURN proveedor_nombre;
END //
DELIMITER ;

-- 12. Función para calcular el descuento promedio aplicado en ventas
DELIMITER //
CREATE FUNCTION descuento_promedio()
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE promedio_descuento DECIMAL(5,2);
    SELECT AVG(descuento) INTO promedio_descuento
    FROM Descuentos;
    RETURN promedio_descuento;
END //
DELIMITER ;

-- 13. Función para calcular el total de ingresos por ventas
DELIMITER //
CREATE FUNCTION total_ingresos_ventas()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_ingresos DECIMAL(10,2);
    SELECT SUM(total_venta) INTO total_ingresos
    FROM Ventas;
    RETURN total_ingresos;
END //
DELIMITER ;

-- 14. Función para calcular el stock total de productos
DELIMITER //
CREATE FUNCTION stock_total_productos()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_stock INT;
    SELECT SUM(stock) INTO total_stock
    FROM Productos;
    RETURN total_stock;
END //
DELIMITER ;

-- 15. Función para estimar el stock de accesorios disponibles
DELIMITER //
CREATE FUNCTION stock_accesorios()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_accesorios INT;
    SELECT SUM(stock) INTO total_accesorios
    FROM Accesorios;
    RETURN total_accesorios;
END //
DELIMITER ;

-- 16. Función para estimar la ganancia promedio por venta
DELIMITER //
CREATE FUNCTION ganancia_promedio_venta()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE ganancia_promedio DECIMAL(10,2);
    SELECT AVG(total_venta) INTO ganancia_promedio
    FROM Ventas;
    RETURN ganancia_promedio;
END //
DELIMITER ;

-- 17. Función para obtener el cliente con más compras realizadas
DELIMITER //
CREATE FUNCTION cliente_con_mas_compras()
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE cliente_nombre VARCHAR(100);
    SELECT CONCAT(c.nombre, ' ', c.apellido) INTO cliente_nombre
    FROM Clientes c
    JOIN Ventas v ON c.id_cliente = v.id_cliente
    GROUP BY c.nombre, c.apellido
    ORDER BY COUNT(v.id_venta) DESC
    LIMIT 1;
    RETURN cliente_nombre;
END //
DELIMITER ;

-- 18. Función para calcular el costo promedio de los productos vendidos
DELIMITER //
CREATE FUNCTION costo_promedio_productos_vendidos()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE costo_promedio DECIMAL(10,2);
    SELECT AVG(dv.precio_unitario) INTO costo_promedio
    FROM Detalles_Venta dv;
    RETURN costo_promedio;
END //
DELIMITER ;

-- 19. Función para calcular el total de ventas realizadas por un empleado
DELIMITER //
CREATE FUNCTION total_ventas_empleado(id_emp INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_ventas DECIMAL(10,2);
    SELECT SUM(total_venta) INTO total_ventas
    FROM Ventas
    WHERE id_empleado = id_emp;
    RETURN total_ventas;
END //
DELIMITER ;

-- 20. Función para calcular el total de ventas entre dos fechas

DELIMITER //
CREATE FUNCTION total_ventas_rango_fechas(fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(total_venta) INTO total
    FROM Ventas
    WHERE fecha_venta BETWEEN fecha_inicio AND fecha_fin;
    RETURN total;
END //
DELIMITER ;

