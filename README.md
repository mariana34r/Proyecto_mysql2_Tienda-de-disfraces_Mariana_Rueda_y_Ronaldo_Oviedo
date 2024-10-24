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
1. **Procesar Venta**:
   ```sql 

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


2. **Registrar Nuevo Proveedor**
   ```sql 

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


3. **Registrar Nuevo Empleado**
    ```sql 
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




4. **Aplicar Descuento**
    ```sql

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
    
5. **Actualizar Inventario**
    ```sql
    
    CREATE PROCEDURE ActualizarInventario(
        IN p_id_producto INT,
        IN p_nueva_cantidad INT
    )
    BEGIN
        UPDATE Productos
        SET stock = p_nueva_cantidad
        WHERE id_producto = p_id_producto;
    END;
    
6. **Eliminar Producto**
    ```sql
    CREATE PROCEDURE EliminarProducto(
        IN p_id_producto INT
    )
    BEGIN
        DELETE FROM Productos WHERE id_producto = p_id_producto;
    END;
    
7. **Generar Informe de Ventas**
    ```sql
    CREATE PROCEDURE GenerarInformeVentas(
        IN p_fecha_inicio DATE,
        IN p_fecha_fin DATE
    )
    BEGIN
        SELECT * FROM Ventas
        WHERE fecha_venta BETWEEN p_fecha_inicio AND p_fecha_fin;
    END;
    
8. **Obtener Clientes Recurrentes**
    ```sql
    CREATE PROCEDURE ObtenerClientesRecurrentes()
    BEGIN
        SELECT Clientes.id_cliente, Clientes.nombre, COUNT(Ventas.id_venta) AS total_compras
        FROM Clientes
        JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
        GROUP BY Clientes.id_cliente
        HAVING total_compras > 1;
    END;
    
9. **Registrar Compra de Productos**
    ```sql
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
    
10. **Promociones por Temporada**
    ```sql
    CREATE PROCEDURE AplicarPromocionTemporada(
        IN p_categoria VARCHAR(50),
        IN p_porcentaje DECIMAL(5,2)
    )
    BEGIN
        UPDATE Productos
        SET precio = precio - (precio * p_porcentaje / 100)
        WHERE categoria = p_categoria;
    END;
    
11. **Registrar Maquillaje**
    ```sql
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
    
12. **Consultar Stock Bajo**
    ```sql
    CREATE PROCEDURE ConsultarStockBajo(
        IN p_stock_minimo INT
    )
    BEGIN
        SELECT * FROM Productos
        WHERE stock < p_stock_minimo;
    END;
    
13. **Registrar Accesorios**
    ```sql
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
    
14. **Actualizar Precio Producto**
    ```sql
    CREATE PROCEDURE ActualizarPrecioProducto(
        IN p_id_producto INT,
        IN p_nuevo_precio DECIMAL(10,2)
    )
    BEGIN
        UPDATE Productos
        SET precio = p_nuevo_precio
        WHERE id_producto = p_id_producto;
    END;
    
15. **Listar Ventas por Empleado**
    ```sql
    CREATE PROCEDURE ListarVentasPorEmpleado(
        IN p_id_empleado INT
    )
    BEGIN
        SELECT * FROM Ventas
        WHERE id_empleado = p_id_empleado;
    END;
    
16. **Generar Informe de Compras**
    ```sql
    CREATE PROCEDURE GenerarInformeCompras(
        IN p_fecha_inicio DATE,
        IN p_fecha_fin DATE
    )
    BEGIN
        SELECT * FROM Compras
        WHERE fecha_compra BETWEEN p_fecha_inicio AND p_fecha_fin;
    END;
    
17. **Listar Productos por Categoria**
    ```sql
    CREATE PROCEDURE ListarProductosPorCategoria(
        IN p_categoria VARCHAR(50)
    )
    BEGIN
        SELECT * FROM Productos
        WHERE categoria = p_categoria;
    END;
    
18. **Descuento en Compras Masivas**
    ```sql
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
    
19. **Actualizar Datos de Proveedor**
    ```sql
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
    
20. **Eliminar Empleado**
    ```sql
    CREATE PROCEDURE EliminarEmpleado(
        IN p_id_empleado INT
    )
    BEGIN
        DELETE FROM Empleados WHERE id_empleado = p_id_empleado;
    END;



# Funciones 🕷️:



1. **Función para calcular el stock total de un producto por categoría**
    ```sql
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
    
2. **Función para calcular el salario anual de un empleado**
    ```sql
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
    
3. **Función para calcular el total de ventas de un cliente**
    ```sql
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
    
4. **Función para obtener el empleado con mayor salario**
    ```sql
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
    
5. **Función para obtener el producto más vendido**
    ```sql
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
    
6. **Función para calcular el stock de disfraces por debajo de cierto límite**
    ```sql
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
    
7. **Función para calcular el costo promedio de un disfraz**
    ```sql
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
    
8. **Función para estimar el costo operativo mensual basado en los salarios**
    ```sql
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
    
9. **Función para calcular el total de compras realizadas por un proveedor**
    ```sql
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
    
10. **Función para calcular el total de productos vendidos en una fecha específica**
    ```sql
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
    
11. **Función para obtener el proveedor con más compras realizadas**
    ```sql
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
    
12. **Función para calcular el descuento promedio aplicado en ventas**
    ```sql
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
    
13. **Función para calcular el total de ingresos por ventas**
    ```sql
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
    
14. **Función para calcular el stock total de productos**
    ```sql
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
    
15. **Función para estimar el stock de accesorios disponibles**
    ```sql
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
    
16. **Función para estimar la ganancia promedio por venta**
    ```sql
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
    
17. **Función para obtener el cliente con más compras realizadas**
    ```sql
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
    
18. **Función para calcular el costo promedio de los productos vendidos**
    ```sql
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
    
19. **Función para calcular el total de ventas realizadas por un empleado**
    ```sql
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
    
20. **Función para calcular el total de ventas entre dos fechas**
    ```sql
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




 # Triggers 🦇:


1. **Actualizar inventario al insertar una nueva venta**
    ```sql
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
    
2. **Registrar cambios de salario en el historial**
     ```sql
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
    
3. **Verificar disponibilidad de stock antes de confirmar la venta**
     ```sql
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
    
4. **Registro de nueva venta en el historial de ventas**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_historial_venta
    AFTER INSERT ON Ventas
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Ventas (id_venta, fecha_venta, total_venta, id_cliente, id_empleado)
        VALUES (NEW.id_venta, NEW.fecha_venta, NEW.total_venta, NEW.id_cliente, NEW.id_empleado);
    END //
    DELIMITER ;
    
5. **Actualizar fecha de última compra de cliente**
     ```sql
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
    
 6. **Registrar cambios en el historial de empleados cuando se actualice un salario**
     ```sql
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
    
7. **Registrar cambios en el historial de proveedores al actualizar sus datos**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_historial_proveedores
    AFTER UPDATE ON Proveedores
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Proveedores (id_proveedor, nombre_antiguo, telefono_antiguo, direccion_antigua, email_antiguo, fecha_cambio)
        VALUES (OLD.id_proveedor, OLD.nombre, OLD.telefono, OLD.direccion, OLD.email, NOW());
    END //
    DELIMITER ;
    
8. **Registrar cambios en el historial de clientes al actualizar sus datos**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_historial_cliente
    AFTER UPDATE ON Clientes
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Clientes (id_cliente, nombre_antiguo, apellido_antiguo, email_antiguo, telefono_antiguo, direccion_antigua, fecha_cambio)
        VALUES (OLD.id_cliente, OLD.nombre, OLD.apellido, OLD.email, OLD.telefono, OLD.direccion, NOW());
    END //
    DELIMITER ;
    
9. **Actualizar historial de clientes al insertar**
     ```sql
    DELIMITER //
    CREATE TRIGGER historial_clientes_insertar
    AFTER INSERT ON Clientes
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Clientes (id_cliente, accion, fecha)
        VALUES (NEW.id_cliente, 'INSERTAR', NOW());
    END //
    DELIMITER ;
    
10. **Verificar existencia de cliente al modificar datos**
     ```sql
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
    
11. **Registrar cambios en el historial de ventas**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_historial_ventas
    AFTER UPDATE ON Ventas
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Ventas (id_venta, fecha, total_venta)
        VALUES (NEW.id_venta, NOW(), NEW.total_venta);
    END //
    DELIMITER ;
    
12. **Limitar el stock de productos al actualizar**
     ```sql
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
    
 13. **Registrar la creación de un nuevo producto**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_nuevo_producto
    AFTER INSERT ON Productos
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Productos (id_producto, accion, fecha)
        VALUES (NEW.id_producto, 'CREAR', NOW());
    END //
    DELIMITER ;
    
14. **Registrar cambios en descuentos**
     ```sql
    DELIMITER //
    CREATE TRIGGER registrar_cambio_descuento
    AFTER UPDATE ON Descuentos
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Descuentos (id_descuento, porcentaje_anterior, porcentaje_nuevo, fecha_cambio)
        VALUES (NEW.id_descuento, OLD.porcentaje, NEW.porcentaje, NOW());
    END //
    DELIMITER ;

15. **Verificar la disponibilidad de disfraces al eliminar**
     ```sql
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
    
16. **Aumentar stock de maquillaje al eliminar venta**
     ```sql
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
    
17. **Verificar existencia de proveedor al insertar compra**
     ```sql
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
    
18. **Notificar al cambiar la información de un empleado**
     ```sql
    DELIMITER //
    CREATE TRIGGER notificar_cambio_empleado
    AFTER UPDATE ON Empleados
    FOR EACH ROW
    BEGIN
        INSERT INTO Notificaciones (mensaje, fecha)
        VALUES (CONCAT('La información del empleado ', NEW.nombre, ' ha sido actualizada.'), NOW());
    END //
    DELIMITER ;
    
19. **Actualizar estado de productos al eliminar**
     ```sql
    DELIMITER //
    CREATE TRIGGER actualizar_estado_producto_eliminar
    AFTER DELETE ON Productos
    FOR EACH ROW
    BEGIN
        INSERT INTO Historial_Productos (id_producto, accion, fecha)
        VALUES (OLD.id_producto, 'ELIMINAR', NOW());
    END //
    DELIMITER ;
    
20. **Limitar cantidad de compras por cliente**
     ```sql
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


# Eventos 🕸️:

1. **Crear evento para generar reportes semanales de ventas**
   ```sql
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

2. **Crear evento para actualizar el estado del inventario al finalizar cada día**
    ```sql
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
    
 3. **Crear evento para limpiar registros de ventas antiguos**
    ```sql
    DELIMITER //
    CREATE EVENT LimpiarVentasAntiguas
    ON SCHEDULE EVERY 1 MONTH
    STARTS '2024-11-01 00:00:00' 
    DO
    BEGIN
        DELETE FROM Ventas WHERE fecha < DATE_SUB(NOW(), INTERVAL 1 YEAR);
    END //
    DELIMITER ;
    
4. **Crear evento para respaldar la base de datos**
    ```sql
    DELIMITER //
    CREATE EVENT RespaldarBaseDatos
    ON SCHEDULE EVERY 1 DAY
    STARTS '2024-10-23 01:00:00'
    DO
    BEGIN
        SELECT 'Respaldo realizado a las ' + NOW();
    END //
    DELIMITER ;
    
5. **Crear evento para enviar correos recordatorios a proveedores**
    ```sql
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
    
6. **Crear evento para actualizar automáticamente los precios de los productos**
    ```sql
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
    
7. **Crear evento para verificar la disponibilidad de productos en stock**
    ```sql
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
    
8. **Crear evento para archivar datos de clientes inactivos**
    ```sql
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
    
9. **Crear evento para auditar cambios en la base de datos**
    ```sql
    DELIMITER //
    CREATE EVENT AuditarCambios
    ON SCHEDULE EVERY 1 WEEK
    DO
    BEGIN
        INSERT INTO Auditoria (fecha, descripcion)
        VALUES (NOW(), 'Auditoría de cambios realizada.');
    END //
    DELIMITER ;
    
10. **Crear evento para notificar a los empleados sobre cambios en políticas**
    ```sql
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
    
11. **Crear evento para recalcular descuentos automáticos**
    ```sql
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
    
12. **Crear evento para enviar informes a la gerencia**
    ```sql
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
    
 13. **Crear evento para verificar y optimizar índices en tablas**
    ```sql
    DELIMITER //
    CREATE EVENT VerificarIndices
    ON SCHEDULE EVERY 1 MONTH
    STARTS '2024-11-01 00:00:00'
    BEGIN
        SELECT 'Índices verificados y optimizados.';
    END //
    DELIMITER ;
    
14. **Crear evento para revisar y ajustar el horario de los empleados**
    ```sql
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
    
15. **Crear evento para actualizar la información de contacto de clientes**
    ```sql
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
    
16. **Crear evento para optimizar consultas lentas**
    ```sql
    DELIMITER //
    CREATE EVENT OptimizarConsultas
    ON SCHEDULE EVERY 1 MONTH
    STARTS '2024-11-01 00:00:00' 
    DO
    BEGIN
        SELECT 'Consultas optimizadas.';
    END //
    DELIMITER ;
    
17. **Crear evento para actualizar información de productos**
    ```sql
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
    
 18. **Crear evento para archivar registros de ventas antiguas**
    ```sql
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
    
19. **Crear evento para enviar informes de costos**
    ```sql
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
    
    
20. **Crear evento para enviar recordatorios de pago a clientes**
    ```sql
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















