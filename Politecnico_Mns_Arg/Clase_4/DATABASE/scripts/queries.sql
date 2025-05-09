-- This file contains various SQL queries to retrieve and manipulate data from the Alumnos, Cursos, Profesores, and Inscripciones tables.

-- Example query to retrieve all students
SELECT * FROM Alumnos;

-- Example query to retrieve all courses
SELECT * FROM Cursos;

-- Example query to retrieve all professors
SELECT * FROM Profesores;

-- Example query to retrieve all enrollments
SELECT * FROM Inscripciones;

-- Example query to find students enrolled in a specific course
SELECT Alumnos.nombre, Alumnos.apellido
FROM Alumnos
JOIN Inscripciones ON Alumnos.id = Inscripciones.alumno_id
JOIN Cursos ON Inscripciones.curso_id = Cursos.id
WHERE Cursos.nombre = 'Course Name';

-- Example query to count the number of students in each course
SELECT Cursos.nombre, COUNT(Inscripciones.alumno_id) AS total_alumnos
FROM Cursos
LEFT JOIN Inscripciones ON Cursos.id = Inscripciones.curso_id
GROUP BY Cursos.nombre;

-- Example query to find professors teaching a specific course
SELECT Profesores.nombre, Profesores.apellido
FROM Profesores
JOIN Cursos ON Profesores.id = Cursos.profesor_id
WHERE Cursos.nombre = 'Course Name';