# Tienda de disfraces 👻

## Tabla de contenido 
| Indice | Título  |
|--|--|
| 1. | [Descripción_del_proyecto](#Descripción_del_proyecto) |
| 2. | [Imagen de la base de Datos](#Imagen_de_la_base_de_Datos) |
| 3. | [Estructura de la Base de Datos](#Estructura_de_la_Base_de_Datos) |
| 4. | [Requerimientos](#Requerimientos) |
| 5. | [Consultas](#Consultas) |
| 6. | [Autores](#Autores) |



# Descripción del Proyecto 🧟‍♂️
Esta es una base de datos que permita gestionar de manera eficiente todas las operaciones relacionadas con una tienda de disfraces. 
Esta base de datos de tienda de disfraces almacena disfraces, accesorios, maquillaje y otros productos relacionados, y gestiona múltiples aspectos como la administración de empleados, inventarios, ventas, proveedores y clientes.


# Imagen de la base de datos Tienda de disfraces 🧛‍♂️:

![image](https://github.com/user-attachments/assets/ae4610ae-0794-4351-af4c-9f48d81df1ea)

# Estructura de la Base de Datos 👑:

La base de datos consta de las siguientes tablas:
## 1. Empleados
Descripción: Almacena información sobre los Empleados de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/a8daaf9b-aecf-4984-a6f3-3c7f0b69bb0d)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_empleado`       | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del empleado.                        |
| `nombre`            | VARCHAR(100)                         | Nombre del empleado.                                     |
| `apellido`          | VARCHAR(100)                         | Apellido del empleado.                                   |
| `email`             | VARCHAR(100)                         | Correo electrónico del empleado.                         |
| `telefono`          | VARCHAR(20)                          | Número de teléfono del empleado.                         |
| `salario`           | DECIMAL(10, 2)                       | Salario del empleado.                                    |
| `fecha_contratacion`| DATE                                 | Fecha de contratación del empleado.                      |


## 2. Clientes
Descripción: Almacena información sobre los clientes de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/d89f6eff-0337-41dd-887f-fa926671c24e)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_cliente`        | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del cliente.                         |
| `nombre`            | VARCHAR(100)                         | Nombre del cliente.                                      |
| `apellido`          | VARCHAR(100)                         | Apellido del cliente.                                    |
| `email`             | VARCHAR(100)                         | Correo electrónico del cliente.                          |
| `telefono`          | VARCHAR(20)                          | Número de teléfono del cliente.                          |
| `direccion`         | VARCHAR(255)                         | Dirección del cliente.                                   |



## 3. Proveedores
Descripción: Almacena información sobre los provedores de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/5ec38145-4158-4d88-af9b-7a77860e35c1)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_proveedor`      | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del proveedor.                       |
| `nombre`            | VARCHAR(100)                         | Nombre del proveedor.                                    |
| `telefono`          | VARCHAR(20)                          | Número de teléfono del proveedor.                        |
| `direccion`         | VARCHAR(255)                         | Dirección del proveedor.                                 |
| `email`             | VARCHAR(100)                         | Correo electrónico del proveedor.                        |



## 4. Productos
Descripción: Almacena información sobre los productos de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/4219ada6-c4c1-4850-8ec8-99f6c37f0b7b)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_producto`       | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del producto.                        |
| `nombre`            | VARCHAR(100)                         | Nombre del producto.                                     |
| `categoria`         | VARCHAR(50)                          | Categoría del producto.                                  |
| `descripcion`       | TEXT                                 | Descripción del producto.                                |
| `precio`            | DECIMAL(10, 2)                       | Precio del producto.                                    |
| `stock`             | INT                                  | Cantidad disponible en inventario.                       |



## 5. Proveedores_Productos
Descripción: Esta tabla almacena las asociaciones entre proveedores y productos, facilitando la identificación de qué proveedor suministra cada producto específico.

![image](https://github.com/user-attachments/assets/5a882927-7182-49fa-94be-0939d2a387f5)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_proveedor`      | INT                                  | Referencia al proveedor (FOREIGN KEY).                  |
| `id_producto`       | INT                                  | Referencia al producto (FOREIGN KEY).                   |




## 6. Disfraces
Descripción: Almacena información sobre los Disfraces de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/9b7a92b4-0419-457d-9f8f-7a29ace1762b)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_disfraz`        | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del disfraz.                         |
| `nombre`            | VARCHAR(100)                         | Nombre del disfraz.                                     |
| `categoria`         | INT                                  | Categoría del disfraz.                                  |
| `descripcion`       | TEXT                                 | Descripción del disfraz.                                |
| `precio`            | DECIMAL(10, 2)                       | Precio del disfraz.                                     |
| `stock`             | INT                                  | Cantidad disponible en inventario.                       |



## 7. Accesorios
Descripción: Almacena información sobre los Accesorios de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/0064186d-380d-4a0f-965a-adb0e999c8fa)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_accesorio`      | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del accesorio.                       |
| `nombre`            | VARCHAR(100)                         | Nombre del accesorio.                                    |
| `descripcion`       | TEXT                                 | Descripción del accesorio.                               |
| `precio`            | DECIMAL(10, 2)                       | Precio del accesorio.                                   |
| `stock`             | INT                                  | Cantidad disponible en inventario.                       |



## 8. Maquillaje
Descripción: Almacena información sobre el Maquillaje de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/69d33561-1706-4044-8140-c8150000bf9a)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_maquillaje`     | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del producto de maquillaje.          |
| `nombre`            | VARCHAR(100)                         | Nombre del producto de maquillaje.                        |
| `tipo`              | VARCHAR(50)                          | Tipo de maquillaje.                                      |
| `precio`            | DECIMAL(10, 2)                       | Precio del producto de maquillaje.                        |
| `stock`             | INT                                  | Cantidad disponible en inventario.                       |



## 9. Ventas
Descripción: Almacena información sobre las ventas de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/c386a8a2-e115-4eeb-a70a-d17e6f829001)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_venta`          | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la venta.                         |
| `fecha_venta`       | DATETIME                             | Fecha y hora de la venta (no nulo).                     |
| `total_venta`       | DECIMAL(10, 2)                       | Monto total de la venta (no negativo).                  |
| `id_cliente`        | INT                                  | Referencia al cliente (FOREIGN KEY).                    |
| `id_empleado`       | INT                                  | Referencia al empleado que realizó la venta (FOREIGN KEY). |



## 10. Historial_Ventas
Descripción: Almacena información sobre el historial de ventas de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/eaca45aa-116d-4267-9045-941cc8190d0e)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_historial_venta`| INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del historial de venta.              |
| `fecha_mod`         | DATETIME                             | Fecha y hora de la modificación (no nulo).               |
| `cambios`           | TEXT                                 | Descripción de los cambios realizados.                   |
| `id_venta`          | INT                                  | Referencia a la venta correspondiente (FOREIGN KEY).     |



## 11. Historial_Clientes
Descripción: Almacena información sobre el historial de clientes de la tienda de disfraces.

![image](https://github.com/user-attachments/assets/d5c6402e-122b-4369-8abe-69ec55fcbc5d)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_historial_cliente` | INT, AUTO_INCREMENT, PRIMARY KEY   | Identificador único del historial de cliente.            |
| `fecha_mod`         | DATETIME                             | Fecha y hora de la modificación (no nulo).               |
| `comentarios`       | TEXT                                 | Comentarios sobre el cliente.                            |
| `id_cliente`        | INT                                  | Referencia al cliente correspondiente (FOREIGN KEY).    |


## 12. Descuentos
Descripción: Almacena información sobre el descuento en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/a0372550-3e5a-4976-9fd4-73fab1a7741a)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_descuento`      | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del descuento.                       |
| `porcentaje`        | DECIMAL(5, 2)                        | Porcentaje del descuento (0 a 100).                      |
| `monto_descuento`   | DECIMAL(10, 2)                       | Monto total del descuento (no negativo).                 |
| `id_venta`          | INT                                  | Referencia a la venta correspondiente (FOREIGN KEY).    |



## 13. Clientes_Productos
Descripción: Almacena los productos que han sido comprados por un cliente expecifico en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/2aa20247-4fad-4dab-92df-36951fcf3a3d)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_cliente`        | INT                                  | Referencia al cliente (FOREIGN KEY).                     |
| `id_producto`       | INT                                  | Referencia al producto (FOREIGN KEY).                    |



## 14. Pagos
Descripción: Almacena los pagos que han sido realizados en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/097ec4a5-d767-4438-8b0d-15a9b7d2e727)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_pago`           | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del pago.                            |
| `fecha_pago`        | DATETIME                             | Fecha y hora del pago (no nulo).                        |
| `monto_total`       | DECIMAL(10, 2)                       | Monto total del pago (no negativo).                     |
| `id_venta`          | INT                                  | Referencia a la venta correspondiente (FOREIGN KEY).    |




## 15. Metodos_Pagos
Descripción: Almacenar información sobre los métodos de pago asociados a cada pago en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/c9b3f1f3-13fa-478e-8a2a-10c5160e6d47)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_metodo`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del método de pago.                  |
| `metodo_pago`       | VARCHAR(100)                         | Descripción del método de pago (no nulo).                |
| `monto`             | DECIMAL(10, 2)                       | Monto asociado al método de pago (no negativo).          |
| `id_pago`           | INT                                  | Referencia al pago correspondiente (FOREIGN KEY).        |



## 16. Compras
Descripción: Almacenar información sobre las compras echas en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/694127e6-5908-4439-8385-918e9ace36e4)

### Columnas:

| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_compra`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la compra.                       |
| `fecha_compra`      | DATE                                 | Fecha de la compra.                                     |
| `total`             | DECIMAL(10, 2)                       | Total de la compra.                                     |


## 17. Detalles_Compra
Descripción: Almacena información sobre los productos especifico que se ha comprado en la tienda de disfraces.

![image](https://github.com/user-attachments/assets/3c6a1a00-3ae8-4440-83d5-2da5649166b4)


| Columna             | Tipo                                 | Descripción                                              |
|---------------------|--------------------------------------|----------------------------------------------------------|
| `id_detalles_compra`| INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de los detalles de compra.          |
| `cantidad`          | INT                                  | Cantidad comprada (entero).                             |
| `precio_unitario`   | DECIMAL(10, 2)                       | Precio unitario del artículo (decimal).                 |
| `id_compra`         | INT                                  | Referencia a la compra correspondiente (FOREIGN KEY).   |
| `id_disfraz`        | INT                                  | Referencia al disfraz (FOREIGN KEY).                    |
| `id_accesorio`      | INT                                  | Referencia al accesorio (FOREIGN KEY).                  |
| `id_maquillaje`     | INT                                  | Referencia al maquillaje (FOREIGN KEY).                 |
| `id_producto`       | INT                                  | Referencia al producto (FOREIGN KEY).                   |


# Requerimientos 🎃:

### Empleados:
Empleados va a tener nombre, apellido, email, teléfono, salario y fecha de contratación.

### Cliente:
clientes va a tener nombre, apellido, email, teléfono y dirección.

### Proveedores:
proveedores con nombre, teléfono, dirección y email.

### Productos:
productos con nombre, categoría, descripción, precio y stock.

### Proveedores Productos:
Asociar productos a proveedores.

### Disfraces:
Disfraces con nombre, categoría, descripción, precio y stock.

### Accesorios;
Accesorios con nombre, descripción, precio y stock.

### Maquillaje;
maquillaje con nombre, tipo, precio y stock.

### Ventas;
venta con fecha, total, ID del cliente y ID del empleado.

### Historial Ventas:
Mantener un registro de cambios en las ventas.

### Historial Clientes:
Mantener un registro de comentarios y cambios en la información del cliente.

### Descuentos:
Aplicar descuentos a ventas y mantener un registro.

### Clientes Productos:
Asociar productos comprados a clientes.

### Pagos:
Registrar pagos asociados a ventas.

### Metodos Pagos:
métodos de pago utilizados en transacciones.

### Compras:
compras con fecha y total.

### Detalles Compra:
detalles de cada compra, incluyendo cantidad, precio unitario y productos asociados.



# Consultas 🎉:

1. **Total de ventas por cada cliente (más de 3 compras)**

SELECT id_cliente, SUM(total_venta) AS total_ventas

FROM Ventas

GROUP BY id_cliente

HAVING COUNT(id_venta) > 3;

2. **Listar los productos más vendidos (cantidad total) en las ventas y el total de ingresos generados por cada uno**

SELECT Productos.id_producto, Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_cantidad_vendida, 

SUM(Detalles_Compra.precio_unitario * Detalles_Compra.cantidad) AS total_ingresos

FROM Productos

JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto

GROUP BY Productos.id_producto, Productos.nombre

ORDER BY total_cantidad_vendida DESC;

3. **Obtener el total de ventas mensuales en el último año, agrupado por mes y categoría de producto**

SELECT MONTH(Ventas.fecha_venta) AS mes, Productos.categoria, SUM(Ventas.total_venta) AS total_ventas

FROM Ventas

JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta

JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto

WHERE Ventas.fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)

GROUP BY mes, Productos.categoria;

4. **Listar los clientes que no han realizado compras en los últimos 6 meses**

SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido

FROM Clientes

LEFT JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente

WHERE Ventas.fecha_venta IS NULL OR Ventas.fecha_venta < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

5. **Obtener los 3 empleados con mayor cantidad de ventas realizadas y el monto total vendido por cada uno**

SELECT Empleados.id_empleado, Empleados.nombre, Empleados.apellido, COUNT(Ventas.id_venta) AS total_ventas, SUM(Ventas.total_venta) AS total_ingresos

FROM Empleados

JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado

GROUP BY Empleados.id_empleado, Empleados.nombre, Empleados.apellido

ORDER BY total_ingresos DESC

LIMIT 3;

6. **Calcular el promedio de ventas mensuales y mostrar solo los meses en los que las ventas superaron ese promedio**

WITH VentasMensuales AS (
    SELECT MONTH(fecha_venta) AS mes, SUM(total_venta) AS total_ventas
    FROM Ventas
    GROUP BY mes
)

SELECT mes, total_ventas

FROM VentasMensuales

WHERE total_ventas > (SELECT AVG(total_ventas) FROM VentasMensuales);

7. **Obtener los proveedores que suministran más de 3 tipos diferentes de productos**

SELECT Proveedores.id_proveedor, Proveedores.nombre, COUNT(DISTINCT Productos.categoria) AS categorias_suministradas

FROM Proveedores

JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor

JOIN Productos ON Proveedores_Productos.id_producto = Productos.id_producto

GROUP BY Proveedores.id_proveedor, Proveedores.nombre

HAVING categorias_suministradas > 3;

8. **Listar los clientes que han comprado productos de más de 3 categorías diferentes**

SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido, COUNT(DISTINCT Productos.categoria) AS categorias_compradas

FROM Clientes

JOIN Clientes_Productos ON Clientes.id_cliente = Clientes_Productos.id_cliente

JOIN Productos ON Clientes_Productos.id_producto = Productos.id_producto

GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido

HAVING categorias_compradas > 3;

9. **Obtener las ventas donde el cliente ha realizado más de un método de pago**

SELECT Ventas.id_venta, Clientes.nombre, Clientes.apellido, COUNT(Metodos_Pagos.id_metodo) AS cantidad_metodos_pago

FROM Ventas

JOIN Pagos ON Ventas.id_venta = Pagos.id_venta

JOIN Metodos_Pagos ON Pagos.id_pago = Metodos_Pagos.id_pago

JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente

GROUP BY Ventas.id_venta, Clientes.nombre, Clientes.apellido

HAVING cantidad_metodos_pago > 1;

10. **Mostrar los productos con stock inferior a la media de todos los productos**

SELECT Productos.nombre, Productos.stock

FROM Productos

WHERE Productos.stock < (SELECT AVG(stock) FROM Productos);

11. **Listar el historial de cambios en ventas de un cliente específico**

SELECT Historial_Ventas.*
FROM Historial_Ventas
JOIN Ventas ON Historial_Ventas.id_venta = Ventas.id_venta
WHERE Ventas.id_cliente = ?;

12. **Obtener el total de ingresos generados por cada empleado en un período específico**

SELECT Empleados.id_empleado, Empleados.nombre, SUM(Ventas.total_venta) AS total_ingresos

FROM Empleados

JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado

WHERE Ventas.fecha_venta BETWEEN ? AND ?

GROUP BY Empleados.id_empleado, Empleados.nombre;

13. **Mostrar el cliente que ha realizado la compra de mayor monto**

SELECT Clientes.nombre, Clientes.apellido, MAX(Ventas.total_venta) AS mayor_compra

FROM Ventas

JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente

GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido

ORDER BY mayor_compra DESC

LIMIT 1;

14. **Obtener el total de ventas por categoría de producto**

SELECT Productos.categoria, SUM(Ventas.total_venta) AS total_ventas

FROM Ventas

JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta

JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto

GROUP BY Productos.categoria;

15. **Listar el top 5 de productos más caros en stock**

SELECT nombre, precio, stock

FROM Productos

WHERE stock > 0

ORDER BY precio DESC

LIMIT 5;

16. **Obtener los descuentos aplicados a las ventas en un período específico**

SELECT Descuentos.*

FROM Descuentos

JOIN Ventas ON Descuentos.id_venta = Ventas.id_venta

WHERE Ventas.fecha_venta BETWEEN ? AND ?;

17. **Listar todos los métodos de pago utilizados en las compras**

SELECT DISTINCT Metodos_Pagos.metodo_pago

FROM Metodos_Pagos

JOIN Pagos ON Metodos_Pagos.id_pago = Pagos.id_pago;

18. **Obtener las compras realizadas por un cliente en un período específico**

SELECT Compras.*

FROM Compras

JOIN Detalles_Compra ON Compras.id_compra = Detalles_Compra.id_compra

JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta

WHERE Ventas.id_cliente = ? AND Ventas.fecha_venta BETWEEN ? AND ?;

19. **Listar los accesorios con stock bajo y su proveedor**

SELECT Accesorios.nombre, Accesorios.stock, Proveedores.nombre AS proveedor

FROM Accesorios

JOIN Proveedores_Productos ON Accesorios.id_accesorio = Proveedores_Productos.id_producto

JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor

WHERE Accesorios.stock < 5;

20. **Obtener el total de pagos realizados por cliente**

SELECT Clientes.nombre, Clientes.apellido, SUM(Pagos.monto_total) AS total_pagado

FROM Pagos

JOIN Ventas ON Pagos.id_venta = Ventas.id_venta

JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente

GROUP BY Clientes.id_cliente;

21. **Listar todos los productos junto con sus proveedores**

SELECT Productos.nombre AS producto, Proveedores.nombre AS proveedor

FROM Productos

JOIN Proveedores_Productos ON Productos.id_producto = Proveedores_Productos.id_producto

JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor;

22. **Obtener la cantidad de productos por categoría**

SELECT categoria, COUNT(*) AS cantidad

FROM Productos

GROUP BY categoria;

23. **Obtener las ventas totales por mes**

SELECT DATE_FORMAT(fecha_venta, '%Y-%m') AS mes, SUM(total_venta) AS total_ventas

FROM Ventas

GROUP BY mes;

24. **Listar los clientes que han realizado menos de 2 compras**

SELECT Clientes.nombre, Clientes.apellido, COUNT(Ventas.id_venta) AS cantidad_compras

FROM Clientes

LEFT JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente

GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido

HAVING cantidad_compras < 2;

25. **Mostrar el producto más vendido y su cantidad**

SELECT Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_vendido

FROM Detalles_Compra

JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto

GROUP BY Productos.id_producto

ORDER BY total_vendido DESC

LIMIT 1;



# Procedimientos 🤡:

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

