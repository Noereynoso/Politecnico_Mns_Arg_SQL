-- Este script inserta datos para la base de datos de la escuela.
-- En esta parte inserta datos en la tabla de alumnos.
-- La tabla de alumnos contiene la información de los alumnos de la escuela.
INSERT INTO alumnos (nombre, apellido, fecha_nacimiento, email) VALUES
    ('Juan', 'Pérez', '2005-04-12', 'juanper123@gmail.com'),
    ('Ana', 'Gómez', '2006-08-20', 'anagom3@gmail.com'),
    ('Luis', 'Martínez', '2004-11-15', 'luismart12@gmail.com');

-- En esta parte inserta datos en la tabla de profesores.
-- La tabla de profesores contiene la información de los profesores de la escuela.
INSERT INTO Profesores (nombre, apellido, especialidad) VALUES
('Carlos', 'Fernández', 'Matemáticas'),
('Laura', 'Ramírez', 'Historia'),
('Pedro', 'Sánchez', 'Ciencias'),
('Ana', 'Torres', 'Inglés');

-- En esta parte inserta datos en la tabla de cursos.
-- La tabla de cursos contiene la información de los cursos de la escuela.

INSERT INTO cursos (nombre_curso, id_profesor) VALUES
    ('Matemáticas ', 1),
    ('Historia Argentina', 2),
    ('Python', 3);


-- En esta parte inserta datos en la tabla de inscripciones.
-- La tabla de inscripciones contiene la información de las inscripciones de los alumnos a los cursos.
INSERT INTO inscripciones (id_alumno, id_curso, fecha_inscripcion) VALUES
    (3, 1, '2024-03-01'),
    (3, 3, '2024-03-05'),
    (4, 2, '2024-03-03'),
    (5, 1, '2024-03-02');