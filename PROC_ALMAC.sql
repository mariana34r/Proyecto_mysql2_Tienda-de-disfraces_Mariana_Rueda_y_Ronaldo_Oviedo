-- 1. Procesar Venta --

CREATE PROCEDURE ProcesarVenta(
    IN p_id_cliente INT,
    IN p_id_empleado INT,
    IN p_total_venta DECIMAL(10,2),
    IN p_detalles JSON
)
BEGIN
    DECLARE v_id_venta INT;

    INSERT INTO Ventas (fecha_venta, total_venta, id_cliente, id_empleado)
    VALUES (NOW(), p_total_venta, p_id_cliente, p_id_empleado);

    SET v_id_venta = LAST_INSERT_ID();

    INSERT INTO Detalles_Compra (id_venta, id_producto, cantidad, precio_unitario)
    SELECT v_id_venta, JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.id_producto')), JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.cantidad')), JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.precio_unitario'));

    UPDATE Productos
    SET stock = stock - JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.cantidad'))
    WHERE id_producto = JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.id_producto'));
END;

-- 2. Registrar Nuevo Proveedor --

CREATE PROCEDURE RegistrarProveedor(
    IN p_nombre VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_direccion VARCHAR(255),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO Proveedores (nombre, telefono, direccion, email)
    VALUES (p_nombre, p_telefono, p_direccion, p_email);
END;

-- 3. Registrar Nuevo Empleado --

CREATE PROCEDURE RegistrarEmpleado(
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_salario DECIMAL(10,2),
    IN p_fecha_contratacion DATE
)
BEGIN
    INSERT INTO Empleados (nombre, apellido, email, telefono, salario, fecha_contratacion)
    VALUES (p_nombre, p_apellido, p_email, p_telefono, p_salario, p_fecha_contratacion);
END;

-- 4. Aplicar Descuento --

CREATE PROCEDURE AplicarDescuento(
    IN p_id_venta INT,
    IN p_porcentaje DECIMAL(5,2)
)
BEGIN
    DECLARE v_total DECIMAL(10,2);
    SELECT total_venta INTO v_total FROM Ventas WHERE id_venta = p_id_venta;

    IF v_total IS NOT NULL THEN
        INSERT INTO Descuentos (porcentaje, monto_descuento, id_venta)
        VALUES (p_porcentaje, (v_total * p_porcentaje / 100), p_id_venta);
    END IF;
END;

-- 5. Actualizar Inventario --

CREATE PROCEDURE ActualizarInventario(
    IN p_id_producto INT,
    IN p_nueva_cantidad INT
)
BEGIN
    UPDATE Productos
    SET stock = p_nueva_cantidad
    WHERE id_producto = p_id_producto;
END;

-- 6. Eliminar Producto --

CREATE PROCEDURE EliminarProducto(
    IN p_id_producto INT
)
BEGIN
    DELETE FROM Productos WHERE id_producto = p_id_producto;
END;

-- 7. Generar Informe de Ventas --

CREATE PROCEDURE GenerarInformeVentas(
    IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE
)
BEGIN
    SELECT * FROM Ventas
    WHERE fecha_venta BETWEEN p_fecha_inicio AND p_fecha_fin;
END;

-- 8. Obtener Clientes Recurrentes --

CREATE PROCEDURE ObtenerClientesRecurrentes()
BEGIN
    SELECT Clientes.id_cliente, Clientes.nombre, COUNT(Ventas.id_venta) AS total_compras
    FROM Clientes
    JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
    GROUP BY Clientes.id_cliente
    HAVING total_compras > 1;
END;

-- 9. Registrar Compra de Productos --

CREATE PROCEDURE RegistrarCompra(
    IN p_id_proveedor INT,
    IN p_fecha_compra DATE,
    IN p_total DECIMAL(10,2),
    IN p_detalles JSON
)
BEGIN
    DECLARE v_id_compra INT;

    INSERT INTO Compras (fecha_compra, total)
    VALUES (p_fecha_compra, p_total);

    SET v_id_compra = LAST_INSERT_ID();

    -- Insertar detalles de la compra
    INSERT INTO Detalles_Compra (id_compra, id_producto, cantidad, precio_unitario)
    SELECT v_id_compra, JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.id_producto')), JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.cantidad')), JSON_UNQUOTE(JSON_EXTRACT(p_detalles, '$.precio_unitario'));
END;

-- 10. Promociones por Temporada --

CREATE PROCEDURE AplicarPromocionTemporada(
    IN p_categoria VARCHAR(50),
    IN p_porcentaje DECIMAL(5,2)
)
BEGIN
    UPDATE Productos
    SET precio = precio - (precio * p_porcentaje / 100)
    WHERE categoria = p_categoria;
END;

-- 11. Registrar Maquillaje --

CREATE PROCEDURE RegistrarMaquillaje(
    IN p_nombre VARCHAR(100),
    IN p_tipo VARCHAR(50),
    IN p_precio DECIMAL(10,2),
    IN p_stock INT
)
BEGIN
    INSERT INTO Maquillaje (nombre, tipo, precio, stock)
    VALUES (p_nombre, p_tipo, p_precio, p_stock);
END;

-- 12. Consultar Stock Bajo --

CREATE PROCEDURE ConsultarStockBajo(
    IN p_stock_minimo INT
)
BEGIN
    SELECT * FROM Productos
    WHERE stock < p_stock_minimo;
END;

-- 13. Registrar Accesorios --

CREATE PROCEDURE RegistrarAccesorio(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio DECIMAL(10,2),
    IN p_stock INT
)
BEGIN
    INSERT INTO Accesorios (nombre, descripcion, precio, stock)
    VALUES (p_nombre, p_descripcion, p_precio, p_stock);
END;

-- 14. Actualizar Precio Producto --

CREATE PROCEDURE ActualizarPrecioProducto(
    IN p_id_producto INT,
    IN p_nuevo_precio DECIMAL(10,2)
)
BEGIN
    UPDATE Productos
    SET precio = p_nuevo_precio
    WHERE id_producto = p_id_producto;
END;

-- 15. Listar Ventas por Empleado --

CREATE PROCEDURE ListarVentasPorEmpleado(
    IN p_id_empleado INT
)
BEGIN
    SELECT * FROM Ventas
    WHERE id_empleado = p_id_empleado;
END;

-- 16. Generar Informe de Compras --

CREATE PROCEDURE GenerarInformeCompras(
    IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE
)
BEGIN
    SELECT * FROM Compras
    WHERE fecha_compra BETWEEN p_fecha_inicio AND p_fecha_fin;
END;

-- 17. Listar Productos por Categoria --

CREATE PROCEDURE ListarProductosPorCategoria(
    IN p_categoria VARCHAR(50)
)
BEGIN
    SELECT * FROM Productos
    WHERE categoria = p_categoria;
END;

-- 18. Descuento en Compras Masivas --

CREATE PROCEDURE DescuentoComprasMasivas(
    IN p_id_cliente INT,
    IN p_cantidad INT,
    IN p_porcentaje DECIMAL(5,2)
)
BEGIN
    IF (SELECT COUNT(*) FROM Ventas WHERE id_cliente = p_id_cliente) >= p_cantidad THEN
        INSERT INTO Descuentos (porcentaje, id_venta)
        VALUES (p_porcentaje, (SELECT MAX(id_venta) FROM Ventas WHERE id_cliente = p_id_cliente));
    END IF;
END;

-- 19. Actualizar Datos de Proveedor --

CREATE PROCEDURE ActualizarProveedor(
    IN p_id_proveedor INT,
    IN p_nombre VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_direccion VARCHAR(255),
    IN p_email VARCHAR(100)
)
BEGIN
    UPDATE Proveedores
    SET nombre = p_nombre,
        telefono = p_telefono,
        direccion = p_direccion,
        email = p_email
    WHERE id_proveedor = p_id_proveedor;
END;

-- 20. Eliminar Empleado --

CREATE PROCEDURE EliminarEmpleado(
    IN p_id_empleado INT
)
BEGIN
    DELETE FROM Empleados WHERE id_empleado = p_id_empleado;
END;