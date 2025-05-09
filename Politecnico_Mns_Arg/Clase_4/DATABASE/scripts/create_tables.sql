-- Para crear la base de datos de la escuela, se deben crear las tablas necesarias.-- Primero escribir el script para crear la base de datos.

CREATE DATABASE escuela;
-- Este script crea las tablas necesarias para la base de datos de la escuela.-- Las tablas son: Alumnos, Profesores, Cursos e Inscripciones.-- Cada tabla tiene sus respectivas columnas y tipos de datos.-- Las tablas tienen relaciones entre sí a través de claves foráneas.-- Este script crea las tablas necesarias para la base de datos de la escuela.-- Esta es la tabla de alumnos.

CREATE TABLE Alumnos (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Este script crea las tablas necesarias para la base de datos de la escuela.-- Esta es la tabla de profesores.-- La tabla de profesores contiene la información de los profesores de la escuela.-- La tabla de profesores tiene una relación con la tabla de cursos.
CREATE TABLE profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    especialidad VARCHAR(60) NOT NULL
);

-- Esta es la tabla de cursos.-- La tabla de cursos contiene la información de los cursos de la escuela.-- La tabla de cursos tiene una relación con la tabla de profesores.-- La tabla de cursos tiene una relación con la tabla de inscripciones.-- La tabla de cursos tiene una relación con la tabla de alumnos.
CREATE TABLE cursos(
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(60) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores (id_profesor)
);

-- Este script crea las tablas necesarias para la base de datos de la escuela.-- Esta es la tabla de inscripciones.-- La tabla de inscripciones contiene la información de las inscripciones de los alumnos a los cursos.-- La tabla de inscripciones tiene una relación con la tabla de alumnos.-- La tabla de inscripciones tiene una relación con la tabla de cursos. 
CREATE TABLE Inscripciones (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT,
    id_curso INT,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

