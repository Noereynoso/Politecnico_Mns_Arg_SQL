'''        Final de Base de Datos - 2º LLAMADO Marzo 2025      ''' 
'''
1. Creación de una base de datos llamada: Rock Argentino. 
2. Creación de las siguientes tablas, con sus tipos de datos y relaciones entre ellas con sus 
datos correspondientes
'''

CREATE DATABASE Rock_Argentino;
USE Rock_Argentino;

'''
A. Tabla "Bandas": 
Datos precargados:
'''
CREATE TABLE Bandas (
    ID_Banda INT PRIMARY KEY AUTO_INCREMENT,
    NombreBanda VARCHAR(100) NOT NULL,
    AñoFormación INT NOT NULL,
    
);

'''
A. Tabla "Álbumes": 
Datos precargados:
'''
CREATE TABLE Albumes (
    ID_Album INT PRIMARY KEY AUTO_INCREMENT,
    TituloAlbum VARCHAR(100) NOT NULL,
    ID_Banda INT,
    AñoLanzamiento INT NOT NULL,
    Género VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Banda) REFERENCES Bandas(ID_Banda)  
);

'''
C. Tabla “Pistas”: 
Datos precargados:
'''

CREATE TABLE Pistas(
    ID_Pista INT PRIMARY KEY AUTO_INCREMENT,
    TituloPista VARCHAR(100) NOT NULL,
    ID_Album INT,
    Duración TIME NOT NULL,
    FOREIGN KEY (ID_Album) REFERENCES Albumes(ID_Album)
);