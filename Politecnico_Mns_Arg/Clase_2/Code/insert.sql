INSERT INTO productos(nombre_producto, tipo_producto, marca, precio, id_proveedor) VALUES
('Laptop', 'Electrónica', 'Dell', 1200.00, 1),
('Smartphone', 'Electrónica', 'Samsung', 800.00, 2),
('Tablet', 'Electrónica', 'Apple', 600.00, 3),
('Smartwatch', 'Electrónica', 'Garmin', 300.00, 4),
('Auriculares', 'Accesorios', 'Sony', 150.00, 5);

INSERT INTO proveedores(nombre_proveedor, direccion, telefono, correo_electronico) VALUES
('Proveedor A', 'Calle Falsa 123', '2964425179', 'proveedora@example.com'),
('Proveedor B', 'Avenida Siempre Viva 742', '2964251634', 'proveedorb@example.com'),
('Proveedor C', 'Boulevard de los Sueños Rotos 456', '2964642784', 'proveedorc@example.com'),
('Proveedor D', 'Calle de la Amargura 321', '2964234215', 'proveedord@example.com'),
('Proveedor E', 'Calle de la Alegría 654', '2964545674', 'proveedore@example.com');

INSERT INTO clientes(nombre_cliente, direccion, telefono, correo_electronico) VALUES
('Romina', 'San Martin 234', '2964123456', 'romi234@example.com'),
('Lucas', 'Av. Libertador 567', '2964234567', 'lucas567@example.com'),
('Martina', 'Calle Ejemplo 363', '2964345678', 'martina363@example.com'),
('Diego', 'Calle Pomtove 491', '2964456789', 'diego491@example.com'),
('Sofia', 'Calle Partivo 523', '2964567890', 'sofia523@example.com');

INSERT INTO compras(id_cliente, fecha_compra, id_producto, cantidad_producto) VALUES
(1, '2024-01-15', 1, 1),
(2, '2024-01-16', 2, 2),
(3, '2024-01-17', 3, 1),
(4, '2024-01-18', 4, 3),
(5, '2024-01-19', 5, 2);
