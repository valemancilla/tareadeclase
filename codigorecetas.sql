
CREATE TABLE ENCARGADOS (
    id_encargado INT PRIMARY KEY AUTO_INCREMENT,
    nombre_encargado VARCHAR(100) NOT NULL
);


CREATE TABLE CATEGORIAS (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion_categoria TEXT,
    id_encargado INT,
    FOREIGN KEY (id_encargado) REFERENCES ENCARGADOS(id_encargado)
);


CREATE TABLE INGREDIENTES (
    id_ingredientes INT PRIMARY KEY AUTO_INCREMENT,
    ingredientes VARCHAR(200) NOT NULL,
    unidad_medida VARCHAR(50) NOT NULL
);


CREATE TABLE PLATOS (
    id_plato INT PRIMARY KEY AUTO_INCREMENT,
    nombre_plato VARCHAR(100) NOT NULL,
    descripcion TEXT,
    nivel_dificultad VARCHAR(50),
    foto VARCHAR(255),
    precio_final DECIMAL(10,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIAS(id_categoria)
);

CREATE TABLE RECETAS (
    id_plato INT,
    id_ingrediente INT,
    cantidad_requerida DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_plato, id_ingrediente),
    FOREIGN KEY (id_plato) REFERENCES PLATOS(id_plato),
    FOREIGN KEY (id_ingrediente) REFERENCES INGREDIENTES(id_ingredientes)
);