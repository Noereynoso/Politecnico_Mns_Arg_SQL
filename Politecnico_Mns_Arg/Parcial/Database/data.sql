"Crear una base de datos con el nombre Hotel, que contenga tres tablas con sus 
respectivos datos y las relaciones correspondientes entre ellas."

CREATE DATABASE Hotel;
USE Hotel;  

CREATE TABLE habitaciones(
    id_habitacion INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    precio_por_noche DECIMAL(10, 2) NOT NULL
    estado VARCHAR(50) NOT NULL
);

CREATE TABLE huespedes (
    id_huesped INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE reservas (
    id_huesped INT NOT NULL,
    id_habitacion INT NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    FOREIGN KEY (id_huesped) REFERENCES huespedes(id_huesped),
    FOREIGN KEY (id_habitacion) REFERENCES habitaciones(id_habitacion)
);