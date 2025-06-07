# Consultas SQL para las Tablas: Bandas, Albumes y Pistas

Este archivo contiene ejemplos de consultas y comandos SQL para trabajar con las tablas `Bandas`, `Albumes` y `Pistas`. Incluye cómo agregar, consultar, modificar y eliminar datos, ordenado alfabéticamente.

---


## A. Agregar Datos

- **Agregar una banda:**
  ```sql
  INSERT INTO Bandas (nombre, pais, anio_formacion) VALUES ('The Beatles', 'Reino Unido', 1960);


- **Agregar un álbum:**
    ```sql
    INSERT INTO Albumes (titulo, id_banda, anio_lanzamiento) VALUES ('Abbey Road', 1, 1969);

- **Agregar una pista:**
    ```sql
    INSERT INTO Pistas (titulo, duracion, id_album) VALUES ('Come Together', '4:20', 1);


---

## B. Borrar (Eliminar)

- **Eliminar una banda:**
    ```sql
    DELETE FROM Bandas WHERE id_banda = 1;

- **Eliminar un álbum:**
    ```sql
    DELETE FROM Albumes WHERE id_album = 1;

- **Eliminar una pista**
    ```sql
    DELETE FROM Pistas WHERE id_pista = 1;

- **Eliminar la tabla Bandas:**
    ```sql
    DROP TABLE Bandas;

- **Eliminar la tabla Albumes:**
    ```sql
    DROP TABLE Albumes;

- **Eliminar la tabla Pistas:**
    ```sql
    DROP TABLE Pistas;


---

##  C. Consultar Datos
- **Consultar todas las bandas:**
    ```sql
    SELECT * FROM Bandas;

- **Consultar todos los álbumes:**
    ```sql
    SELECT * FROM Albumes;

- **Consultar todas las pistas:**
    ```sql
    SELECT * FROM Pistas;

- **Consultar álbumes de una banda específica:**
    ```sql
    SELECT Albumes.* 
    FROM Albumes
    JOIN Bandas ON Albumes.id_banda = Bandas.id_banda
    WHERE Bandas.nombre = 'The Beatles';

- **Consultar pistas de un álbum específico:**
    ```sql
    SELECT Pistas.*
    FROM Pistas
    JOIN Albumes ON Pistas.id_album = Albumes.id_album
    WHERE Albumes.titulo = 'Abbey Road';

- **Consultar todas las pistas de una banda específica:**
    ```sql
    SELECT Pistas.*
    FROM Pistas
    JOIN Albumes ON Pistas.id_album = Albumes.id_album
    JOIN Bandas ON Albumes.id_banda = Bandas.id_banda
    WHERE Bandas.nombre = 'The Beatles';

- **Contar la cantidad de álbumes por banda:**
    ```sql
    SELECT Bandas.nombre, COUNT(Albumes.id_album) AS cantidad_albumes
    FROM Bandas
    LEFT JOIN Albumes ON Bandas.id_banda = Albumes.id_banda
    GROUP BY Bandas.nombre;

- **Contar la cantidad de pistas por álbum:**
    ```sql
    SELECT Albumes.titulo, COUNT(Pistas.id_pista) AS cantidad_pistas    
    FROM Albumes
    LEFT JOIN Pistas ON Albumes.id_album = Pistas.id_album
    GROUP BY Albumes.titulo;


---

##  D. Modificar Datos

- **Actualizar el nombre de una banda:**
    ```sql
    UPDATE Bandas SET nombre = 'The Rolling Stones' WHERE id_banda = 2;


- **Actualizar el título de un álbum:**
    ```sql
    UPDATE Albumes SET titulo = 'Let It Be' WHERE id_album = 2;

- **Actualizar el título de una pista:**
    ```sql
    UPDATE Pistas SET titulo = 'Something' WHERE id_pista = 2;


---

##  E. Otras Consultas Útiles

- **Buscar banda por país:**
    ```sql
    SELECT * FROM Bandas WHERE pais = 'Argentina';

- **Listar álbumes y su banda correspondiente:**
    ```sql
    SELECT Albumes.titulo, Bandas.nombre
    FROM Albumes
    JOIN Bandas ON Albumes.id_banda = Bandas.id_banda;

- **Listar pistas, álbum y banda:**
    ```sql
    SELECT Pistas.titulo AS pista, Albumes.titulo AS album, Bandas.nombre AS banda
    FROM Pistas
    JOIN Albumes ON Pistas.id_album = Albumes.id_album
    JOIN Bandas ON Albumes.id_banda = Bandas.id_banda;


---
