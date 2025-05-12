CREATE DATABASE empleados;

USE empleados;

CREATE TABLE Employees (
    id_employee INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
);

CREATE TABLE Departments (
    id_department INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL
);