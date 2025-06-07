CREATE DATABASE tienda;

USE tienda;

CREATE TABLE productos(
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(100) NOT NULL,
    tipo_producto VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    id_proveedor INT,
    FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE proveedores(
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_proveedor VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL
);

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    id_compra INT,
    FOREIGN KEY(id_compra) REFERENCES compras(id_compra)
);

CREATE TABLE compras(
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    Fecha_Compra DATE NOT NULL,
    id_producto INT,
    cantidad_producto INT,
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
);
