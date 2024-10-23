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





