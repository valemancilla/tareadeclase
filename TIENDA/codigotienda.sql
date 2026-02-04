-- 1. tabla CIUDADES 
CREATE TABLE CIUDADES (
    codigo_ciudad INT PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    departamento VARCHAR(100)
);

-- 2. tabla CLIENTES 
CREATE TABLE CLIENTES (
    codigo_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    codigo_ciudad INT,
    telefono VARCHAR(20),
    FOREIGN KEY (codigo_ciudad) REFERENCES CIUDADES(codigo_ciudad)
);

-- 3.  tabla PROVEEDORES 
CREATE TABLE PROVEEDORES (
    codigo_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    codigo_ciudad INT,
    telefono VARCHAR(20),
    FOREIGN KEY (codigo_ciudad) REFERENCES CIUDADES(codigo_ciudad)
);

-- 4.  tabla PRODUCTOS 
CREATE TABLE PRODUCTOS (
    codigo_producto INT PRIMARY KEY AUTO_INCREMENT,
    descripcion TEXT,
    precio DECIMAL(10,2),
    existencias INT,
    codigo_proveedor INT,
    FOREIGN KEY (codigo_proveedor) REFERENCES PROVEEDORES(codigo_proveedor)
);

-- 5.  tabla COMPRAS 
CREATE TABLE COMPRAS (
    codigo_cliente INT,
    codigo_producto INT,
    fecha_compra DATE NOT NULL,
    PRIMARY KEY (codigo_cliente, codigo_producto),
    FOREIGN KEY (codigo_cliente) REFERENCES CLIENTES(codigo_cliente),
    FOREIGN KEY (codigo_producto) REFERENCES PRODUCTOS(codigo_producto)
);