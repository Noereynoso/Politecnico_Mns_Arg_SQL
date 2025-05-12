INSERT INTO clientes (nombre, email, fecha_registro, ciudad) VALUES 
    ('Lucía Gómez', 'lucia@gmail.com', '2023-01-10', 'Buenos Aires'), 
    ('Pedro López', 'pedro@yahoo.com', '2022-11-05', 'Córdoba'), 
    ('Ana Torres', 'ana@hotmail.com', '2024-03-22', 'Mendoza'), 
    ('Carlos Ruiz', 'cruiz@gmail.com', '2023-06-15', 'Rosario'), 
    ('María Díaz', 'maria.diaz@live.com', '2022-01-01', 'Buenos Aires');  

-- /*Crea un índice para mejorar la búsqueda por correo electrónico en la tabla clientes.*/
-- select email from clientes;

-- create index idx_email on clientes(email);
INSERT INTO compras (cliente_id, fecha_compra, monto, producto) VALUES 
    (1, '2024-01-01', 5000.00, 'Notebook'), 
    (2, '2024-02-15', 1200.00, 'Auriculares'), 
    (1, '2024-03-03', 1500.00, 'Teclado'), 
    (3, '2023-12-10', 2000.00, 'Mouse'), 
    (4, '2024-01-22', 2500.00, 'Monitor'), 
    (5, '2023-11-20', 800.00, 'Cámara Web');