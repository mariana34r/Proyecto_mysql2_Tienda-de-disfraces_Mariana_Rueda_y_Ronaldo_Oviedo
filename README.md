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

## Empleados:
Empleados va a tener nombre, apellido, email, teléfono, salario y fecha de contratación.

## Cliente:
clientes va a tener nombre, apellido, email, teléfono y dirección.

## Proveedores:
proveedores con nombre, teléfono, dirección y email.

## Productos:
productos con nombre, categoría, descripción, precio y stock.

## Proveedores Productos:
Asociar productos a proveedores.

## Disfraces:
Disfraces con nombre, categoría, descripción, precio y stock.

## Accesorios;
Accesorios con nombre, descripción, precio y stock.

## Maquillaje;
maquillaje con nombre, tipo, precio y stock.

## Ventas;
venta con fecha, total, ID del cliente y ID del empleado.

## Historial Ventas:
Mantener un registro de cambios en las ventas.

## Historial Clientes:
Mantener un registro de comentarios y cambios en la información del cliente.

## Descuentos:
Aplicar descuentos a ventas y mantener un registro.

## Clientes Productos:
Asociar productos comprados a clientes.

## Pagos:
Registrar pagos asociados a ventas.

## Metodos Pagos:
métodos de pago utilizados en transacciones.

## Compras:
compras con fecha y total.

## Detalles Compra:
detalles de cada compra, incluyendo cantidad, precio unitario y productos asociados.


## Consultas 🎉:

1. Total de ventas por cada cliente (más de 3 compras)
```sql
SELECT id_cliente, SUM(total_venta) AS total_ventas
FROM Ventas
GROUP BY id_cliente
HAVING COUNT(id_venta) > 3;

2. Listar los productos más vendidos (cantidad total) en las ventas y el total de ingresos generados por cada uno

SELECT Productos.id_producto, Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_cantidad_vendida, 
SUM(Detalles_Compra.precio_unitario * Detalles_Compra.cantidad) AS total_ingresos
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
GROUP BY Productos.id_producto, Productos.nombre
ORDER BY total_cantidad_vendida DESC;

-- 3. Obtener el total de ventas mensuales en el último año, agrupado por mes y categoría de producto
SELECT MONTH(Ventas.fecha_venta) AS mes, Productos.categoria, SUM(Ventas.total_venta) AS total_ventas
FROM Ventas
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
WHERE Ventas.fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY mes, Productos.categoria;

-- 4. Listar los clientes que no han realizado compras en los últimos 6 meses
SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido
FROM Clientes
LEFT JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
WHERE Ventas.fecha_venta IS NULL OR Ventas.fecha_venta < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- 5. Obtener los 3 empleados con mayor cantidad de ventas realizadas y el monto total vendido por cada uno
SELECT Empleados.id_empleado, Empleados.nombre, Empleados.apellido, COUNT(Ventas.id_venta) AS total_ventas, SUM(Ventas.total_venta) AS total_ingresos
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado, Empleados.nombre, Empleados.apellido
ORDER BY total_ingresos DESC
LIMIT 3;

-- 6. Calcular el promedio de ventas mensuales y mostrar solo los meses en los que las ventas superaron ese promedio
WITH VentasMensuales AS (
    SELECT MONTH(fecha_venta) AS mes, SUM(total_venta) AS total_ventas
    FROM Ventas
    GROUP BY mes
)
SELECT mes, total_ventas
FROM VentasMensuales
WHERE total_ventas > (SELECT AVG(total_ventas) FROM VentasMensuales);

-- 7. Obtener los proveedores que suministran más de 3 tipos diferentes de productos
SELECT Proveedores.id_proveedor, Proveedores.nombre, COUNT(DISTINCT Productos.categoria) AS categorias_suministradas
FROM Proveedores
JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
JOIN Productos ON Proveedores_Productos.id_producto = Productos.id_producto
GROUP BY Proveedores.id_proveedor, Proveedores.nombre
HAVING categorias_suministradas > 3;

-- 8. Listar los clientes que han comprado productos de más de 3 categorías diferentes
SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido, COUNT(DISTINCT Productos.categoria) AS categorias_compradas
FROM Clientes
JOIN Clientes_Productos ON Clientes.id_cliente = Clientes_Productos.id_cliente
JOIN Productos ON Clientes_Productos.id_producto = Productos.id_producto
GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido
HAVING categorias_compradas > 3;

-- 9. Obtener las ventas donde el cliente ha realizado más de un método de pago
SELECT Ventas.id_venta, Clientes.nombre, Clientes.apellido, COUNT(Metodos_Pagos.id_metodo) AS cantidad_metodos_pago
FROM Ventas
JOIN Pagos ON Ventas.id_venta = Pagos.id_venta
JOIN Metodos_Pagos ON Pagos.id_pago = Metodos_Pagos.id_pago
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
GROUP BY Ventas.id_venta, Clientes.nombre, Clientes.apellido
HAVING cantidad_metodos_pago > 1;

-- 10. Mostrar los productos con stock inferior a la media de todos los productos
SELECT Productos.nombre, Productos.stock
FROM Productos
WHERE Productos.stock < (SELECT AVG(stock) FROM Productos);

-- 11. Listar el historial de cambios en ventas de un cliente específico
SELECT Historial_Ventas.*
FROM Historial_Ventas
JOIN Ventas ON Historial_Ventas.id_venta = Ventas.id_venta
WHERE Ventas.id_cliente = ?;

-- 12. Obtener el total de ingresos generados por cada empleado en un período específico
SELECT Empleados.id_empleado, Empleados.nombre, SUM(Ventas.total_venta) AS total_ingresos
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
WHERE Ventas.fecha_venta BETWEEN ? AND ?
GROUP BY Empleados.id_empleado, Empleados.nombre;

-- 13. Mostrar el cliente que ha realizado la compra de mayor monto
SELECT Clientes.nombre, Clientes.apellido, MAX(Ventas.total_venta) AS mayor_compra
FROM Ventas
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido
ORDER BY mayor_compra DESC
LIMIT 1;

-- 14. Obtener el total de ventas por categoría de producto
SELECT Productos.categoria, SUM(Ventas.total_venta) AS total_ventas
FROM Ventas
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Productos.categoria;

-- 15. Listar el top 5 de productos más caros en stock
SELECT nombre, precio, stock
FROM Productos
WHERE stock > 0
ORDER BY precio DESC
LIMIT 5;

-- 16. Obtener los descuentos aplicados a las ventas en un período específico
SELECT Descuentos.*
FROM Descuentos
JOIN Ventas ON Descuentos.id_venta = Ventas.id_venta
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 17. Listar todos los métodos de pago utilizados en las compras
SELECT DISTINCT Metodos_Pagos.metodo_pago
FROM Metodos_Pagos
JOIN Pagos ON Metodos_Pagos.id_pago = Pagos.id_pago;

-- 18. Obtener las compras realizadas por un cliente en un período específico
SELECT Compras.*
FROM Compras
JOIN Detalles_Compra ON Compras.id_compra = Detalles_Compra.id_compra
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
WHERE Ventas.id_cliente = ? AND Ventas.fecha_venta BETWEEN ? AND ?;

-- 19. Listar los accesorios con stock bajo y su proveedor
SELECT Accesorios.nombre, Accesorios.stock, Proveedores.nombre AS proveedor
FROM Accesorios
JOIN Proveedores_Productos ON Accesorios.id_accesorio = Proveedores_Productos.id_producto
JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor
WHERE Accesorios.stock < 5;

-- 20. Obtener el total de pagos realizados por cliente
SELECT Clientes.nombre, Clientes.apellido, SUM(Pagos.monto_total) AS total_pagado
FROM Pagos
JOIN Ventas ON Pagos.id_venta = Ventas.id_venta
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
GROUP BY Clientes.id_cliente;

-- 21. Listar todos los productos junto con sus proveedores
SELECT Productos.nombre AS producto, Proveedores.nombre AS proveedor
FROM Productos
JOIN Proveedores_Productos ON Productos.id_producto = Proveedores_Productos.id_producto
JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor;

-- 22. Obtener la cantidad de productos por categoría
SELECT categoria, COUNT(*) AS cantidad
FROM Productos
GROUP BY categoria;

-- 23. Obtener las ventas totales por mes
SELECT DATE_FORMAT(fecha_venta, '%Y-%m') AS mes, SUM(total_venta) AS total_ventas
FROM Ventas
GROUP BY mes;

-- 24. Listar los clientes que han realizado menos de 2 compras
SELECT Clientes.nombre, Clientes.apellido, COUNT(Ventas.id_venta) AS cantidad_compras
FROM Clientes
LEFT JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
GROUP BY Clientes.id_cliente, Clientes.nombre, Clientes.apellido
HAVING cantidad_compras < 2;

-- 25. Mostrar el producto más vendido y su cantidad
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_vendido
FROM Detalles_Compra
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Productos.id_producto
ORDER BY total_vendido DESC
LIMIT 1;

-- 26. Listar todas las ventas con el método de pago utilizado
SELECT Ventas.id_venta, Ventas.fecha_venta, Pagos.monto_total, Metodos_Pagos.metodo_pago
FROM Ventas
JOIN Pagos ON Ventas.id_venta = Pagos.id_venta
JOIN Metodos_Pagos ON Pagos.id_pago = Metodos_Pagos.id_pago;

-- 27. Obtener la suma total de ventas y la cantidad de ventas realizadas
SELECT SUM(total_venta) AS total_ingresos, COUNT(id_venta) AS total_ventas
FROM Ventas;

-- 28. Listar todos los empleados y la cantidad de ventas que han realizado
SELECT Empleados.nombre, Empleados.apellido, COUNT(Ventas.id_venta) AS total_ventas
FROM Empleados
LEFT JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado;

-- 29. Mostrar los proveedores que no tienen productos en la base de datos
SELECT Proveedores.nombre
FROM Proveedores
LEFT JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
WHERE Proveedores_Productos.id_producto IS NULL;

-- 30. Obtener las ventas que han generado descuentos
SELECT Ventas.id_venta, Ventas.total_venta, Descuentos.monto_descuento
FROM Ventas
JOIN Descuentos ON Ventas.id_venta = Descuentos.id_venta;

-- 31. Obtener el total de productos vendidos por cada cliente
SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido, SUM(Detalles_Compra.cantidad) AS total_productos_vendidos
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
GROUP BY Clientes.id_cliente;

-- 32. Listar los productos que no han sido vendidos
SELECT Productos.nombre
FROM Productos
LEFT JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
WHERE Detalles_Compra.id_producto IS NULL;

-- 33. Obtener los descuentos promedio aplicados por venta
SELECT AVG(monto_descuento) AS descuento_promedio
FROM Descuentos;

-- 34. Obtener las ventas realizadas en el último mes
SELECT *
FROM Ventas
WHERE fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- 35. Listar todos los productos y su cantidad total en ventas
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_vendido
FROM Productos
LEFT JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
GROUP BY Productos.id_producto;

-- 36. Obtener las compras realizadas con más de 2 productos diferentes
SELECT Compras.id_compra, COUNT(DISTINCT Detalles_Compra.id_producto) AS cantidad_productos
FROM Compras
JOIN Detalles_Compra ON Compras.id_compra = Detalles_Compra.id_compra
GROUP BY Compras.id_compra
HAVING cantidad_productos > 2;

-- 37. Obtener la cantidad de cada tipo de maquillaje en stock
SELECT Maquillaje.tipo, SUM(Maquillaje.stock) AS cantidad_total
FROM Maquillaje
GROUP BY Maquillaje.tipo;

-- 38. Obtener el total de pagos realizados por un cliente específico
SELECT Clientes.nombre, Clientes.apellido, SUM(Pagos.monto_total) AS total_pagado
FROM Pagos
JOIN Ventas ON Pagos.id_venta = Ventas.id_venta
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
WHERE Clientes.id_cliente = ?;

-- 39. Obtener el total de ventas y el promedio de ventas por empleado
SELECT Empleados.id_empleado, Empleados.nombre, SUM(Ventas.total_venta) AS total_ventas, AVG(Ventas.total_venta) AS promedio_ventas
FROM Empleados
LEFT JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado;

-- 40. Listar todas las ventas realizadas con sus detalles de productos
SELECT Ventas.id_venta, Detalles_Compra.id_producto, Detalles_Compra.cantidad, Detalles_Compra.precio_unitario
FROM Ventas
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta;

-- 41. Listar los 10 clientes que más han gastado en la tienda
SELECT Clientes.nombre, Clientes.apellido, SUM(Ventas.total_venta) AS total_gastado
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
GROUP BY Clientes.id_cliente
ORDER BY total_gastado DESC
LIMIT 10;

-- 42. Obtener los productos que tienen un precio mayor que la media de los precios de todos los productos
SELECT nombre, precio
FROM Productos
WHERE precio > (SELECT AVG(precio) FROM Productos);

-- 43. Obtener el total de productos por proveedor
SELECT Proveedores.nombre, COUNT(Proveedores_Productos.id_producto) AS total_productos
FROM Proveedores
LEFT JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
GROUP BY Proveedores.id_proveedor;

-- 44. Listar los clientes que han realizado más de una compra en el último año
SELECT Clientes.nombre, Clientes.apellido, COUNT(Ventas.id_venta) AS total_compras
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
WHERE Ventas.fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY Clientes.id_cliente
HAVING total_compras > 1;

-- 45. Obtener el total de ingresos por cada categoría de maquillaje
SELECT Maquillaje.tipo, SUM(Maquillaje.precio * Detalles_Compra.cantidad) AS total_ingresos
FROM Maquillaje
JOIN Detalles_Compra ON Maquillaje.id_maquillaje = Detalles_Compra.id_maquillaje
GROUP BY Maquillaje.tipo;

-- 46. Listar las ventas realizadas en un período específico con su respectivo cliente
SELECT Ventas.id_venta, Clientes.nombre, Clientes.apellido, Ventas.fecha_venta
FROM Ventas
JOIN Clientes ON Ventas.id_cliente = Clientes.id_cliente
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 47. Obtener la cantidad total de stock de todos los productos en la tienda
SELECT SUM(stock) AS total_stock
FROM Productos;

-- 48. Obtener el producto más barato en stock
SELECT nombre, precio
FROM Productos
WHERE stock > 0
ORDER BY precio ASC
LIMIT 1;

-- 49. Listar las ventas con sus respectivos descuentos aplicados
SELECT Ventas.id_venta, Ventas.total_venta, Descuentos.monto_descuento
FROM Ventas
LEFT JOIN Descuentos ON Ventas.id_venta = Descuentos.id_venta;

-- 50. Obtener los 5 clientes que más productos han comprado
SELECT Clientes.id_cliente, Clientes.nombre, COUNT(Detalles_Compra.id_producto) AS total_productos
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
GROUP BY Clientes.id_cliente
ORDER BY total_productos DESC
LIMIT 5;

-- 51. Listar los empleados que han realizado ventas en un período específico
SELECT DISTINCT Empleados.nombre, Empleados.apellido
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 52. Obtener el total de ingresos por mes en el último año
SELECT DATE_FORMAT(fecha_venta, '%Y-%m') AS mes, SUM(total_venta) AS total_ingresos
FROM Ventas
WHERE fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY mes;

-- 53. Obtener los productos que tienen el mismo proveedor
SELECT Productos.nombre, Proveedores.nombre AS proveedor
FROM Productos
JOIN Proveedores_Productos ON Productos.id_producto = Proveedores_Productos.id_producto
JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor
GROUP BY Productos.id_producto, Proveedores.nombre;

-- 54. Obtener el total de ventas por cada empleado en un período específico
SELECT Empleados.id_empleado, Empleados.nombre, SUM(Ventas.total_venta) AS total_ventas
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
WHERE Ventas.fecha_venta BETWEEN ? AND ?
GROUP BY Empleados.id_empleado;

-- 55. Listar los proveedores que suministran productos a más de un cliente
SELECT Proveedores.nombre
FROM Proveedores
JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
JOIN Detalles_Compra ON Proveedores_Productos.id_producto = Detalles_Compra.id_producto
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
GROUP BY Proveedores.id_proveedor
HAVING COUNT(DISTINCT Ventas.id_cliente) > 1;

-- 56. Obtener el total de productos vendidos en cada categoría
SELECT Productos.categoria, SUM(Detalles_Compra.cantidad) AS total_vendidos
FROM Detalles_Compra
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Productos.categoria;

-- 57. Listar todos los productos en stock y su proveedor
SELECT Productos.nombre AS producto, Proveedores.nombre AS proveedor
FROM Productos
JOIN Proveedores_Productos ON Productos.id_producto = Proveedores_Productos.id_producto
JOIN Proveedores ON Proveedores_Productos.id_proveedor = Proveedores.id_proveedor
WHERE Productos.stock > 0;

-- 58. Obtener los clientes que han utilizado más de un método de pago
SELECT Clientes.id_cliente, Clientes.nombre, COUNT(DISTINCT Metodos_Pagos.id_metodo) AS cantidad_metodos_pago
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Pagos ON Ventas.id_venta = Pagos.id_venta
JOIN Metodos_Pagos ON Pagos.id_pago = Metodos_Pagos.id_pago
GROUP BY Clientes.id_cliente
HAVING cantidad_metodos_pago > 1;

-- 59. Obtener la lista de clientes que han realizado compras en un rango de precios
SELECT Clientes.id_cliente, Clientes.nombre, SUM(Detalles_Compra.precio_unitario * Detalles_Compra.cantidad) AS total_gastado
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
GROUP BY Clientes.id_cliente
HAVING total_gastado BETWEEN ? AND ?;

-- 60. Listar los productos con stock bajo (menos de 5 unidades)
SELECT nombre
FROM Productos
WHERE stock < 5;

-- 61. Obtener el promedio de precios de los productos por categoría
SELECT Productos.categoria, AVG(Productos.precio) AS promedio_precio
FROM Productos
GROUP BY Productos.categoria;

-- 62. Listar las compras realizadas por cada cliente con sus detalles
SELECT Clientes.nombre, Clientes.apellido, Compras.id_compra, Detalles_Compra.id_producto, Detalles_Compra.cantidad
FROM Clientes
JOIN Compras ON Clientes.id_cliente = Compras.id_cliente
JOIN Detalles_Compra ON Compras.id_compra = Detalles_Compra.id_compra;

-- 63. Obtener el cliente que más ha gastado en maquillaje
SELECT Clientes.nombre, Clientes.apellido, SUM(Maquillaje.precio * Detalles_Compra.cantidad) AS total_gastado
FROM Clientes
JOIN Detalles_Compra ON Clientes.id_cliente = Ventas.id_cliente
JOIN Maquillaje ON Detalles_Compra.id_maquillaje = Maquillaje.id_maquillaje
GROUP BY Clientes.id_cliente
ORDER BY total_gastado DESC
LIMIT 1;

-- 64. Listar los productos vendidos por empleado en un período específico
SELECT Empleados.nombre, Empleados.apellido, Productos.nombre AS producto, Detalles_Compra.cantidad
FROM Detalles_Compra
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
JOIN Empleados ON Ventas.id_empleado = Empleados.id_empleado
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 65. Obtener los clientes que no han realizado compras en el último año
SELECT Clientes.id_cliente, Clientes.nombre, Clientes.apellido
FROM Clientes
LEFT JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
WHERE Ventas.fecha_venta < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) OR Ventas.id_cliente IS NULL;

-- 66. Obtener el total de productos vendidos en un rango de fechas
SELECT SUM(Detalles_Compra.cantidad) AS total_vendidos
FROM Detalles_Compra
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 67. Obtener el total de ventas por tipo de maquillaje
SELECT Maquillaje.tipo, SUM(Detalles_Compra.cantidad * Maquillaje.precio) AS total_ventas
FROM Detalles_Compra
JOIN Maquillaje ON Detalles_Compra.id_maquillaje = Maquillaje.id_maquillaje
GROUP BY Maquillaje.tipo;

-- 68. Listar los empleados que no han realizado ventas
SELECT Empleados.nombre, Empleados.apellido
FROM Empleados
LEFT JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
WHERE Ventas.id_venta IS NULL;

-- 69. Obtener el total de ingresos por producto
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad * Productos.precio) AS total_ingresos
FROM Detalles_Compra
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Productos.id_producto;

-- 70. Obtener el total de ventas y pagos realizados por cada cliente
SELECT Clientes.id_cliente, Clientes.nombre, SUM(Ventas.total_venta) AS total_ventas, SUM(Pagos.monto_total) AS total_pagado
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Pagos ON Ventas.id_venta = Pagos.id_venta
GROUP BY Clientes.id_cliente;

-- 71. Listar los productos más vendidos y la cantidad vendida
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_vendidos
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
GROUP BY Productos.id_producto
ORDER BY total_vendidos DESC;

-- 72. Obtener la cantidad de productos por tipo de disfraz
SELECT Disfraces.tipo, COUNT(Disfraces.id_disfraz) AS cantidad
FROM Disfraces
GROUP BY Disfraces.tipo;

-- 73. Obtener el total de ingresos generados por cada empleado
SELECT Empleados.id_empleado, Empleados.nombre, SUM(Ventas.total_venta) AS total_ingresos
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado;

-- 74. Listar los clientes que han comprado más de un producto en una sola compra
SELECT Clientes.id_cliente, Clientes.nombre, COUNT(DISTINCT Detalles_Compra.id_producto) AS cantidad_productos
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
GROUP BY Clientes.id_cliente
HAVING cantidad_productos > 1;

-- 75. Obtener el total de compras realizadas en un año específico
SELECT COUNT(*) AS total_compras
FROM Compras
WHERE YEAR(fecha_compra) = ?;

-- 76. Listar los productos con el precio más alto
SELECT nombre, precio
FROM Productos
ORDER BY precio DESC
LIMIT 10;

-- 77. Obtener los clientes que han comprado en todas las categorías de productos
SELECT Clientes.id_cliente, Clientes.nombre
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Clientes.id_cliente
HAVING COUNT(DISTINCT Productos.categoria) = (SELECT COUNT(DISTINCT categoria) FROM Productos);

-- 78. Obtener la cantidad total de ventas realizadas por mes
SELECT MONTH(fecha_venta) AS mes, COUNT(*) AS total_ventas
FROM Ventas
GROUP BY MONTH(fecha_venta);

-- 79. Listar los productos con más de una venta
SELECT Productos.nombre, COUNT(Detalles_Compra.id_venta) AS total_ventas
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
GROUP BY Productos.id_producto
HAVING total_ventas > 1;

-- 80. Obtener los clientes que han realizado la mayor cantidad de compras
SELECT Clientes.id_cliente, Clientes.nombre, COUNT(Ventas.id_venta) AS total_compras
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
GROUP BY Clientes.id_cliente
ORDER BY total_compras DESC
LIMIT 5;

-- 81. Obtener el total de ingresos generados por cada proveedor
SELECT Proveedores.id_proveedor, Proveedores.nombre, SUM(Detalles_Compra.cantidad * Productos.precio) AS total_ingresos
FROM Proveedores
JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
JOIN Detalles_Compra ON Proveedores_Productos.id_producto = Detalles_Compra.id_producto
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Proveedores.id_proveedor;

-- 82. Obtener la cantidad de clientes que han comprado productos en cada categoría
SELECT Productos.categoria, COUNT(DISTINCT Ventas.id_cliente) AS total_clientes
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
GROUP BY Productos.categoria;

-- 83. Listar las compras realizadas por los clientes que han gastado más de un monto específico
SELECT Clientes.id_cliente, Clientes.nombre, Compras.id_compra, SUM(Detalles_Compra.precio_unitario * Detalles_Compra.cantidad) AS total_gastado
FROM Clientes
JOIN Compras ON Clientes.id_cliente = Compras.id_cliente
JOIN Detalles_Compra ON Compras.id_compra = Detalles_Compra.id_compra
GROUP BY Clientes.id_cliente, Compras.id_compra
HAVING total_gastado > ?;

-- 84. Obtener la cantidad total de ventas por empleado y mes
SELECT Empleados.id_empleado, Empleados.nombre, MONTH(Ventas.fecha_venta) AS mes, COUNT(*) AS total_ventas
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado, mes;

-- 85. Obtener los productos que han sido comprados en la última semana
SELECT DISTINCT Productos.nombre
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
WHERE Ventas.fecha_venta >= DATE_SUB(CURDATE(), INTERVAL 7 DAY);

-- 86. Obtener el total de ingresos por cliente y mes
SELECT Clientes.id_cliente, Clientes.nombre, MONTH(Ventas.fecha_venta) AS mes, SUM(Ventas.total_venta) AS total_ingresos
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
GROUP BY Clientes.id_cliente, mes;

-- 87. Listar los 10 productos más rentables
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad * (Productos.precio - Productos.costo)) AS ganancia
FROM Detalles_Compra
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
GROUP BY Productos.id_producto
ORDER BY ganancia DESC
LIMIT 10;

-- 88. Obtener la lista de clientes que han comprado más de un tipo de disfraz
SELECT Clientes.id_cliente, Clientes.nombre, COUNT(DISTINCT Disfraces.id_disfraz) AS cantidad_disfraces
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
JOIN Disfraces ON Detalles_Compra.id_disfraz = Disfraces.id_disfraz
GROUP BY Clientes.id_cliente
HAVING cantidad_disfraces > 1;

-- 89. Obtener los ingresos generados por un proveedor específico
SELECT Proveedores.nombre, SUM(Detalles_Compra.cantidad * Productos.precio) AS total_ingresos
FROM Proveedores
JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
JOIN Detalles_Compra ON Proveedores_Productos.id_producto = Detalles_Compra.id_producto
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
WHERE Proveedores.id_proveedor = ?;

-- 90. Obtener los clientes que no han comprado maquillaje
SELECT Clientes.id_cliente, Clientes.nombre
FROM Clientes
LEFT JOIN Detalles_Compra ON Clientes.id_cliente = Detalles_Compra.id_cliente
LEFT JOIN Maquillaje ON Detalles_Compra.id_maquillaje = Maquillaje.id_maquillaje
WHERE Maquillaje.id_maquillaje IS NULL;

-- 91. Obtener los productos que han estado en stock durante más de un mes
SELECT Productos.nombre
FROM Productos
WHERE DATEDIFF(CURDATE(), Productos.fecha_ingreso) > 30;

-- 92. Listar las ventas realizadas por mes y empleado
SELECT Empleados.id_empleado, Empleados.nombre, MONTH(Ventas.fecha_venta) AS mes, COUNT(*) AS total_ventas
FROM Empleados
JOIN Ventas ON Empleados.id_empleado = Ventas.id_empleado
GROUP BY Empleados.id_empleado, mes;

-- 93. Obtener la cantidad de clientes que han realizado compras en un rango de fechas
SELECT COUNT(DISTINCT Clientes.id_cliente) AS total_clientes
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
WHERE Ventas.fecha_venta BETWEEN ? AND ?;

-- 94. Listar los 10 productos menos vendidos
SELECT Productos.nombre, COUNT(Detalles_Compra.id_venta) AS total_vendidos
FROM Productos
LEFT JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
GROUP BY Productos.id_producto
ORDER BY total_vendidos ASC
LIMIT 10;

-- 95. Obtener los ingresos generados por cada tipo de disfraz
SELECT Disfraces.tipo, SUM(Detalles_Compra.cantidad * Disfraces.precio) AS total_ingresos
FROM Detalles_Compra
JOIN Disfraces ON Detalles_Compra.id_disfraz = Disfraces.id_disfraz
GROUP BY Disfraces.tipo;

-- 96. Listar los productos vendidos en un período de tiempo
SELECT Productos.nombre, SUM(Detalles_Compra.cantidad) AS total_vendidos
FROM Productos
JOIN Detalles_Compra ON Productos.id_producto = Detalles_Compra.id_producto
JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
WHERE Ventas.fecha_venta BETWEEN ? AND ?
GROUP BY Productos.id_producto;

-- 97. Obtener los clientes que han realizado compras de productos en una categoría específica
SELECT Clientes.id_cliente, Clientes.nombre
FROM Clientes
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
JOIN Detalles_Compra ON Ventas.id_venta = Detalles_Compra.id_venta
JOIN Productos ON Detalles_Compra.id_producto = Productos.id_producto
WHERE Productos.categoria = ?;

-- 98. Obtener el promedio de ingresos generados por cliente
SELECT AVG(total_ingresos) AS promedio_ingresos
FROM (
    SELECT Clientes.id_cliente, SUM(Ventas.total_venta) AS total_ingresos
    FROM Clientes
    JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente
    GROUP BY Clientes.id_cliente
) AS ingresos_por_cliente;

-- 99. Obtener el total de ingresos generados en un rango de fechas
SELECT SUM(total_venta) AS total_ingresos
FROM Ventas
WHERE fecha_venta BETWEEN ? AND ?;

-- 100. Listar los proveedores que no han vendido productos en el último año
SELECT Proveedores.id_proveedor, Proveedores.nombre
FROM Proveedores
LEFT JOIN Proveedores_Productos ON Proveedores.id_proveedor = Proveedores_Productos.id_proveedor
LEFT JOIN Detalles_Compra ON Proveedores_Productos.id_producto = Detalles_Compra.id_producto
LEFT JOIN Ventas ON Detalles_Compra.id_venta = Ventas.id_venta
WHERE Ventas.fecha_venta < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) OR Ventas.id_venta IS NULL;








