USE Disfraces;

CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    salario DECIMAL(10, 2),
    fecha_contratacion DATE
);

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

CREATE TABLE Proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    email VARCHAR(100)
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE Proveedores_Productos (
    id_proveedor INT,
    id_producto INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE Disfraces (
    id_disfraz INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria INT,
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE Accesorios (
    id_accesorio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE Maquillaje (
    id_maquillaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    tipo VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha_venta DATETIME NOT NULL,
    total_venta DECIMAL(10, 2) NOT NULL CHECK (total_venta >= 0),
    id_cliente INT,
    id_empleado INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado) ON DELETE CASCADE
);

CREATE TABLE Historial_Ventas (
    id_historial_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha_mod DATETIME NOT NULL,
    cambios TEXT,
    id_venta INT,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta) ON DELETE CASCADE
);

CREATE TABLE Historial_Clientes (
    id_historial_cliente INT AUTO_INCREMENT PRIMARY KEY,
    fecha_mod DATETIME NOT NULL,
    comentarios TEXT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE
);

CREATE TABLE Descuentos (
    id_descuento INT AUTO_INCREMENT PRIMARY KEY,
    porcentaje DECIMAL(5, 2) CHECK (porcentaje >= 0 AND porcentaje <= 100),
    monto_descuento DECIMAL(10, 2) NOT NULL CHECK (monto_descuento >= 0),
    id_venta INT,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta) ON DELETE CASCADE
);

CREATE TABLE Clientes_Productos (
    id_cliente INT,
    id_producto INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto) ON DELETE CASCADE
);

CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pago DATETIME NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL CHECK (monto_total >= 0),
    id_venta INT NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta) ON DELETE CASCADE
);

CREATE TABLE Metodos_Pagos (
    id_metodo INT AUTO_INCREMENT PRIMARY KEY,
    metodo_pago VARCHAR(100) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL CHECK (monto >= 0),
    id_pago INT NOT NULL,
    FOREIGN KEY (id_pago) REFERENCES Pagos(id_pago) ON DELETE CASCADE
);

CREATE TABLE Compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATE,
    total DECIMAL(10, 2)
);

CREATE TABLE Detalles_Compra (
    id_detalles_compra INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    id_compra INT,
    id_disfraz INT,
    id_accesorio INT,
    id_maquillaje INT,
    id_producto INT,
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_disfraz) REFERENCES Disfraces(id_disfraz),
    FOREIGN KEY (id_accesorio) REFERENCES Accesorios(id_accesorio),
    FOREIGN KEY (id_maquillaje) REFERENCES Maquillaje(id_maquillaje),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);