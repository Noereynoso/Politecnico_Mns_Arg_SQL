CREATE DATABASE centro_deportivo;
USE centro_deportivo;

-- Tabla de Entrenadores:

CREATE TABLE entrenadores (
    id_entrenadores INT PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(50) not null,
    apellido VARCHAR(50) NOT NULL,
    diciplina VARCHAR(50) NOT NULL
);

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE rutinas(
    id_rutina INT PRIMARY KEY AUTO_INCREMENT,
    noombre VARCHAR(50) NOT NULL,
    niveles VARCHAR(50) NOT NULL,
    fecha_rutina DATE NOT NULL,
    id_entrenador INT,
    FOREIGN KEY (id_entrenador) REFERENCES entrenadores(id_entrenador)
);

CREATE TABLE asignaciones(
    id_asignaciones INT PRIIMARY KEY AUTO_INCREMENT
    id_cliente INT,
    id_rutina INT,
    fecha_asignacion DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_rutina) REFERENCES rutinas(id_rutina)
);