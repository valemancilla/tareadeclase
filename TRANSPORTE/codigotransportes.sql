
CREATE TABLE PROVINCIAS (
    codigo_provincia INT PRIMARY KEY,
    nombre_provincia VARCHAR(100) NOT NULL
);


CREATE TABLE DESTINATARIO (
    id_destinatario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    calle VARCHAR(200),
    numero VARCHAR(20),
    ciudad VARCHAR(100),
    codigo_provincia INT,
    FOREIGN KEY (codigo_provincia) REFERENCES PROVINCIAS(codigo_provincia)
);


CREATE TABLE CAMIONES (
    matricula_camion VARCHAR(20) PRIMARY KEY,
    modelo VARCHAR(100),
    tipo VARCHAR(50),
    potencia VARCHAR(50)
);


CREATE TABLE CAMIONEROS (
    dni_camioneros VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    calle_camioneros VARCHAR(200),
    numero_camionero VARCHAR(20),
    ciudad_camionero VARCHAR(100),
    salario DECIMAL(10,2),
    poblacion_camionero VARCHAR(100)
);


CREATE TABLE PAQUETES (
    codigo_paquete INT PRIMARY KEY AUTO_INCREMENT,
    descripcion TEXT
);


CREATE TABLE ENVIOS (
    id_envio INT PRIMARY KEY AUTO_INCREMENT,
    codigo_paquete INT NOT NULL,
    id_destinatario INT NOT NULL,
    dni_camionero VARCHAR(20) NOT NULL,
    matricula_camion VARCHAR(20) NOT NULL,
    FOREIGN KEY (codigo_paquete) REFERENCES PAQUETES(codigo_paquete),
    FOREIGN KEY (id_destinatario) REFERENCES DESTINATARIO(id_destinatario),
    FOREIGN KEY (dni_camionero) REFERENCES CAMIONEROS(dni_camioneros),
    FOREIGN KEY (matricula_camion) REFERENCES CAMIONES(matricula_camion)
);