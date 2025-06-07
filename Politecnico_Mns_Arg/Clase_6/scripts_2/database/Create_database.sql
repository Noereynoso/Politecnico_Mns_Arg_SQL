-- Este script inserta datos en las tablas de la base de datos.
-- Este script crea la base de datos y las tablas necesarias para el sistema de gestión de compras.

CREATE DATABASE mercado; -- Este script crea la base de datos mercado
use mercado; -- Este script crea la base de datos mercado

CREATE TABLE clientes -- Este script crea la tabla clientes
     ( id INT AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(100),
     email VARCHAR(100),
     fecha_registro DATE,
     ciudad VARCHAR(50)); 

-- Este script crea la tabla compras
-- Esta tabla almacena información sobre las compras realizadas por los clientes.    

CREATE TABLE compras(id INT AUTO_INCREMENT PRIMARY KEY,
     id_cliente INT,
     fecha_compra DATE,
     monto DECIMAL(10,2),
     producto VARCHAR(100),
     FOREIGN KEY (id_cliente) REFERENCES clientes(id)); 
