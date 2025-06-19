INSERT INTO habitaciones (numero, tipo, precio_por_noche, estado) VALUES

    (101, 'Simple', 5500.00, 'Disponible'),
    (102, 'Doble', 7000.00, 'Ocupada'),
    (103, 'Suite', 12000.00, 'Disponible'),
    (104, 'Simple', 5500.00, 'Ocupada'),
    (105, 'Doble', 7000.00, 'Mantenimiento'),
    (106, 'Simple', 5500.00, 'Disponible'),
    (107, 'Suite', 12000.00, 'Disponible'),
    (108, 'Doble', 7000.00, 'Disponible'),
    (109, 'Simple', 5500.00, 'Ocupada'),
    (110, 'Suite', 12000.00, 'Disponible');

INSERT INTO huespedes (id_huesped, nombre, dni, apellido, telefono, email) VALUES

    (1, 'Juan Pérez', '12345678', 'Pérez', '2901400000', 'juanp@gmail.com'),
    (2, 'María López', '87654321', 'López', '2901400001', 'marial@gmail.com'),
    (3, 'Carlos Gómez', '11223344', 'Gómez', '2901400002', 'cgomez@mail.com'),
    (4, 'Lucía Ramírez', '44332211', 'Ramírez', '2901400003', 'luciaram@mail.com'),
    (5, 'Ana Martínez', '56781234', 'Martínez', '2901400004', 'ana.martinez@host.com'),
    (6, 'Pablo Díaz', '33445566', 'Díaz', '2901400005', 'pdiaz@mail.com'),
    (7, 'Rosa Fernández', '22334455', 'Fernández', '2901400006', 'rosaf@mail.com'),
    (8, 'Mario Suárez', '99887766', 'Suárez', '2901400007', 'msuarez@mail.com'),
    (9, 'Sofía Castro', '88776655', 'Castro', '2901400008', 'sofiac@mail.com'),
    (10, 'Lautaro Molina', '77665544', 'Molina', '2901400009', 'lautaro.m@mail.com');

INSERT INTO reservas (id_huesped, id_habitacion, fecha_entrada, fecha_salida) VALUES
    (1, 2, '2025-06-01', '2025-06-05'),
    (2, 4, '2025-06-03', '2025-06-07'),
    (3, 9, '2025-06-02', '2025-06-04'),
    (4, 7, '2025-06-05', '2025-06-10'),
    (5, 3, '2025-06-01', '2025-06-03'),
    (6, 6, '2025-06-08', '2025-06-11'),
    (7, 8, '2025-06-07', '2025-06-10'),
    (8, 10, '2025-06-04', '2025-06-06'),
    (9, 1, '2025-06-01', '2025-06-02'),
    (10, 5, '2025-06-03', '2025-06-05');