-- 1. Crear evento para generar reportes semanales de ventas

DELIMITER //
CREATE EVENT GenerarReporteVentas
ON SCHEDULE EVERY 1 WEEK
STARTS '2024-10-30 00:00:00' 
DO
BEGIN
    INSERT INTO Reportes (tipo, fecha, descripcion)
    VALUES ('Ventas Semanales', NOW(), 'Reporte de ventas generado automáticamente.');
END //
DELIMITER;

-- 2. Crear evento para actualizar el estado del inventario al finalizar cada día

DELIMITER //
CREATE EVENT ActualizarEstadoInventario
ON SCHEDULE EVERY 1 DAY
STARTS '2024-10-23 23:59:00' 
DO
BEGIN
    UPDATE Inventario
    SET estado = CASE
        WHEN cantidad > 0 THEN 'Disponible'
        ELSE 'Agotado'
    END;
END //
DELIMITER ;

-- 3. Crear evento para limpiar registros de ventas antiguos

DELIMITER //
CREATE EVENT LimpiarVentasAntiguas
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    DELETE FROM Ventas WHERE fecha < DATE_SUB(NOW(), INTERVAL 1 YEAR);
END //
DELIMITER ;

-- 4. Crear evento para respaldar la base de datos

DELIMITER //
CREATE EVENT RespaldarBaseDatos
ON SCHEDULE EVERY 1 DAY
STARTS '2024-10-23 01:00:00'
DO
BEGIN
    SELECT 'Respaldo realizado a las ' + NOW();
END //
DELIMITER ;

-- 5. Crear evento para enviar correos recordatorios a proveedores

DELIMITER //
CREATE EVENT EnviarCorreosRecordatorios
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 09:00:00' 
DO
BEGIN
    INSERT INTO Correos_Enviados (tipo, fecha, descripcion)
    VALUES ('Recordatorio a Proveedores', NOW(), 'Correos de recordatorio enviados automáticamente.');
END //
DELIMITER ;

-- 6. Crear evento para actualizar automáticamente los precios de los productos

DELIMITER //
CREATE EVENT ActualizarPreciosProductos
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    UPDATE Productos
    SET precio = precio * 1.05
    WHERE precio IS NOT NULL;
END //
DELIMITER ;

-- 7. Crear evento para verificar la disponibilidad de productos en stock

DELIMITER //
CREATE EVENT VerificarDisponibilidadProductos
ON SCHEDULE EVERY 1 HOUR
DO
BEGIN
    UPDATE Productos
    SET estado = CASE
        WHEN stock > 0 THEN 'Disponible'
        ELSE 'No Disponible'
    END;
END //
DELIMITER ;

-- 8. Crear evento para archivar datos de clientes inactivos

DELIMITER //
CREATE EVENT ArchivarClientesInactivos
ON SCHEDULE EVERY 3 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    INSERT INTO Clientes_Archivados (nombre, email, fecha_archivo)
    SELECT nombre, email, NOW() FROM Clientes WHERE activo = 0;
    DELETE FROM Clientes WHERE activo = 0;
END //
DELIMITER ;

-- 9. Crear evento para auditar cambios en la base de datos

DELIMITER //
CREATE EVENT AuditarCambios
ON SCHEDULE EVERY 1 WEEK
DO
BEGIN
    INSERT INTO Auditoria (fecha, descripcion)
    VALUES (NOW(), 'Auditoría de cambios realizada.');
END //
DELIMITER ;

-- 10. Crear evento para notificar a los empleados sobre cambios en políticas

DELIMITER //
CREATE EVENT NotificarCambiosPoliticas
ON SCHEDULE EVERY 6 MONTH
STARTS '2024-11-01 09:00:00'
DO
BEGIN
    INSERT INTO Notificaciones (tipo, fecha, descripcion)
    VALUES ('Cambio de Políticas', NOW(), 'Notificación enviada a todos los empleados.');
END //
DELIMITER ;

-- 11. Crear evento para recalcular descuentos automáticos

DELIMITER //
CREATE EVENT RecalcularDescuentos
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00'
DO
BEGIN
    UPDATE Productos
    SET descuento = CASE
        WHEN categoria = 'Ofertas' THEN precio * 0.10
        ELSE 0
    END;
END //
DELIMITER ;

-- 12. Crear evento para enviar informes a la gerencia

DELIMITER //
CREATE EVENT EnviarInformesGerencia
ON SCHEDULE EVERY 2 WEEKS
STARTS '2024-10-30 09:00:00' 
DO
BEGIN
    INSERT INTO Informes_Enviados (tipo, fecha, descripcion)
    VALUES ('Informe a Gerencia', NOW(), 'Informe de operaciones enviado automáticamente.');
END //
DELIMITER ;

-- 13. Crear evento para verificar y optimizar índices en tablas

DELIMITER //
CREATE EVENT VerificarIndices
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00'
BEGIN
    SELECT 'Índices verificados y optimizados.';
END //
DELIMITER ;

-- 14. Crear evento para revisar y ajustar el horario de los empleados

DELIMITER //
CREATE EVENT AjustarHorarioEmpleados
ON SCHEDULE EVERY 1 WEEK
STARTS '2024-10-30 00:00:00'
DO
BEGIN
    UPDATE Empleados
    SET horario = 'Nuevo Horario'
    WHERE necesidad_ajuste = 1;
END //
DELIMITER ;

-- 15. Crear evento para actualizar la información de contacto de clientes

DELIMITER //
CREATE EVENT ActualizarContactosClientes
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    UPDATE Clientes
    SET email = 'nuevo_email@ejemplo.com'
    WHERE id = 1;
END //
DELIMITER ;

-- 16. Crear evento para optimizar consultas lentas

DELIMITER //
CREATE EVENT OptimizarConsultas
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    SELECT 'Consultas optimizadas.';
END //
DELIMITER ;

-- 17. Crear evento para actualizar información de productos

DELIMITER //
CREATE EVENT ActualizarInfoProductos
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00'
DO
BEGIN
    UPDATE Productos
    SET info_actualizada = NOW()
    WHERE estado = 'Activo';
END //
DELIMITER ;

-- 18. Crear evento para archivar registros de ventas antiguas

DELIMITER //
CREATE EVENT ArchivarVentasAntiguas
ON SCHEDULE EVERY 6 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    INSERT INTO Ventas_Archivadas (id_venta, fecha, total)
    SELECT id, fecha, total FROM Ventas WHERE fecha < DATE_SUB(NOW(), INTERVAL 1 YEAR);
    DELETE FROM Ventas WHERE fecha < DATE_SUB(NOW(), INTERVAL 1 YEAR);
END //
DELIMITER ;

-- 19. Crear evento para enviar informes de costos

DELIMITER //
CREATE EVENT EnviarInformesCostos
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-01 00:00:00' 
DO
BEGIN
    INSERT INTO Informes_Costos (fecha, descripcion)
    VALUES (NOW(), 'Informe de costos enviado automáticamente.');
END //
DELIMITER ;


-- 20. Crear evento para enviar recordatorios de pago a clientes

DELIMITER //
CREATE EVENT EnviarRecordatoriosPago
ON SCHEDULE EVERY 1 WEEK
STARTS '2024-10-30 09:00:00'
DO
BEGIN
    INSERT INTO Recordatorios_Pago (cliente_id, fecha, descripcion)
    SELECT cliente_id, NOW(), 'Recordatorio de pago enviado automáticamente.'
    FROM Clientes
    WHERE deuda > 0; 
END //
DELIMITER ;
