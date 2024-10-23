-- 1. Actualizar inventario al insertar una nueva venta

DELIMITER //
CREATE TRIGGER actualizar_inventario_despues_venta
AFTER INSERT ON Detalles_Compra
FOR EACH ROW
BEGIN
    UPDATE Productos
    SET stock = stock - NEW.cantidad
    WHERE Productos.id_producto = NEW.id_producto;
END //
DELIMITER ;

-- 2. Registrar cambios de salario en el historial

DELIMITER //
CREATE TRIGGER registrar_cambio_salario
AFTER UPDATE ON Empleados
FOR EACH ROW
BEGIN
    IF OLD.salario != NEW.salario THEN
        INSERT INTO Historial_Empleados (id_empleado, fecha_cambio, salario_anterior, salario_nuevo)
        VALUES (NEW.id_empleado, NOW(), OLD.salario, NEW.salario);
    END IF;
END //
DELIMITER ;

-- 3. Verificar disponibilidad de stock antes de confirmar la venta

DELIMITER //
CREATE TRIGGER verificar_disponibilidad_antes_venta
BEFORE INSERT ON Detalles_Compra
FOR EACH ROW
BEGIN
    DECLARE stock_disponible INT;
    SELECT stock INTO stock_disponible
    FROM Productos
    WHERE id_producto = NEW.id_producto;
    
    IF stock_disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock insuficiente para realizar la venta.';
    END IF;
END //
DELIMITER ;

-- 4. Registro de nueva venta en el historial de ventas

DELIMITER //
CREATE TRIGGER registrar_historial_venta
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Ventas (id_venta, fecha_venta, total_venta, id_cliente, id_empleado)
    VALUES (NEW.id_venta, NEW.fecha_venta, NEW.total_venta, NEW.id_cliente, NEW.id_empleado);
END //
DELIMITER ;

-- 5. Actualizar fecha de última compra de cliente

DELIMITER //
CREATE TRIGGER actualizar_fecha_ultima_compra
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET fecha_ultima_compra = NEW.fecha_venta
    WHERE id_cliente = NEW.id_cliente;
END //
DELIMITER ;

-- 6. Registrar cambios en el historial de empleados cuando se actualice un salario

DELIMITER //
CREATE TRIGGER actualizar_historial_salario
AFTER UPDATE ON Empleados
FOR EACH ROW
BEGIN
    IF OLD.salario != NEW.salario THEN
        INSERT INTO Historial_Empleados (id_empleado, campo_modificado, valor_anterior, valor_nuevo, fecha_modificacion)
        VALUES (NEW.id_empleado, 'salario', OLD.salario, NEW.salario, NOW());
    END IF;
END //
DELIMITER ;

-- 7. Registrar cambios en el historial de proveedores al actualizar sus datos

DELIMITER //
CREATE TRIGGER registrar_historial_proveedores
AFTER UPDATE ON Proveedores
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Proveedores (id_proveedor, nombre_antiguo, telefono_antiguo, direccion_antigua, email_antiguo, fecha_cambio)
    VALUES (OLD.id_proveedor, OLD.nombre, OLD.telefono, OLD.direccion, OLD.email, NOW());
END //
DELIMITER ;

-- 8. Registrar cambios en el historial de clientes al actualizar sus datos
DELIMITER //
CREATE TRIGGER registrar_historial_cliente
AFTER UPDATE ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Clientes (id_cliente, nombre_antiguo, apellido_antiguo, email_antiguo, telefono_antiguo, direccion_antigua, fecha_cambio)
    VALUES (OLD.id_cliente, OLD.nombre, OLD.apellido, OLD.email, OLD.telefono, OLD.direccion, NOW());
END //
DELIMITER ;

-- 9. Actualizar historial de clientes al insertar

DELIMITER //
CREATE TRIGGER historial_clientes_insertar
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Clientes (id_cliente, accion, fecha)
    VALUES (NEW.id_cliente, 'INSERTAR', NOW());
END //
DELIMITER ;

-- 10. Verificar existencia de cliente al modificar datos

DELIMITER //
CREATE TRIGGER verificar_existencia_cliente_modificar
BEFORE UPDATE ON Clientes
FOR EACH ROW
BEGIN
    DECLARE cliente_existente INT;
    SELECT COUNT(*) INTO cliente_existente FROM Clientes WHERE id_cliente = NEW.id_cliente;

    IF cliente_existente = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente no existe.';
    END IF;
END //
DELIMITER ;

-- 11. Registrar cambios en el historial de ventas

DELIMITER //
CREATE TRIGGER registrar_historial_ventas
AFTER UPDATE ON Ventas
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Ventas (id_venta, fecha, total_venta)
    VALUES (NEW.id_venta, NOW(), NEW.total_venta);
END //
DELIMITER ;

-- 12. Limitar el stock de productos al actualizar

DELIMITER //
CREATE TRIGGER limitar_stock_producto_actualizar
BEFORE UPDATE ON Productos
FOR EACH ROW
BEGIN
    IF NEW.stock < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El stock no puede ser negativo.';
    END IF;
END //
DELIMITER ;

-- 13. Registrar la creación de un nuevo producto

DELIMITER //
CREATE TRIGGER registrar_nuevo_producto
AFTER INSERT ON Productos
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Productos (id_producto, accion, fecha)
    VALUES (NEW.id_producto, 'CREAR', NOW());
END //
DELIMITER ;

-- 14. Registrar cambios en descuentos

DELIMITER //
CREATE TRIGGER registrar_cambio_descuento
AFTER UPDATE ON Descuentos
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Descuentos (id_descuento, porcentaje_anterior, porcentaje_nuevo, fecha_cambio)
    VALUES (NEW.id_descuento, OLD.porcentaje, NEW.porcentaje, NOW());
END //
DELIMITER ;

-- 15. Verificar la disponibilidad de disfraces al eliminar

DELIMITER //
CREATE TRIGGER verificar_disponibilidad_eliminar
BEFORE DELETE ON Ventas
FOR EACH ROW
BEGIN
    DECLARE stock_disponible INT;
    SELECT stock INTO stock_disponible FROM Productos WHERE id_producto = (SELECT id_producto FROM Detalles_Compra WHERE id_venta = OLD.id_venta);

    IF stock_disponible <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar la venta, no hay stock disponible.';
    END IF;
END //
DELIMITER ;

-- 16. Aumentar stock de maquillaje al eliminar venta

DELIMITER //
CREATE TRIGGER aumentar_stock_maquillaje_eliminar
AFTER DELETE ON Ventas
FOR EACH ROW
BEGIN
    UPDATE Maquillaje
    SET stock = stock + (SELECT COUNT(*) FROM Detalles_Compra WHERE id_venta = OLD.id_venta AND id_producto = Maquillaje.id_maquillaje)
    WHERE id_maquillaje IN (SELECT id_producto FROM Detalles_Compra WHERE id_venta = OLD.id_venta AND tipo = 'Maquillaje');
END //
DELIMITER ;

-- 17. Verificar existencia de proveedor al insertar compra

DELIMITER //
CREATE TRIGGER verificar_existencia_proveedor
BEFORE INSERT ON Compras
FOR EACH ROW
BEGIN
    DECLARE proveedor_existente INT;
    SELECT COUNT(*) INTO proveedor_existente FROM Proveedores WHERE id_proveedor = NEW.id_proveedor;

    IF proveedor_existente = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El proveedor no existe.';
    END IF;
END //
DELIMITER ;

-- 18. Notificar al cambiar la información de un empleado

DELIMITER //
CREATE TRIGGER notificar_cambio_empleado
AFTER UPDATE ON Empleados
FOR EACH ROW
BEGIN
    INSERT INTO Notificaciones (mensaje, fecha)
    VALUES (CONCAT('La información del empleado ', NEW.nombre, ' ha sido actualizada.'), NOW());
END //
DELIMITER ;

-- 19. Actualizar estado de productos al eliminar

DELIMITER //
CREATE TRIGGER actualizar_estado_producto_eliminar
AFTER DELETE ON Productos
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Productos (id_producto, accion, fecha)
    VALUES (OLD.id_producto, 'ELIMINAR', NOW());
END //
DELIMITER ;

-- 20. Limitar cantidad de compras por cliente

DELIMITER //
CREATE TRIGGER limitar_cantidad_compras_cliente
BEFORE INSERT ON Ventas
FOR EACH ROW
BEGIN
    DECLARE total_compras INT;
    SELECT COUNT(*) INTO total_compras FROM Ventas WHERE id_cliente = NEW.id_cliente AND fecha >= NOW() - INTERVAL 30 DAY;

    IF total_compras >= 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente no puede realizar más de 5 compras en un mes.';
    END IF;
END //
DELIMITER ;
