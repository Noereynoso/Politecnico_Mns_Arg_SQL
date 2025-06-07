INSERT INTO Bandas (NombreBanda, AñoFormación) VALUES
('Soda Stereo', 1982),
('Patricio Rey y sus Redonditos de Ricota', 1976),
('Los Fabulosos Cadillacs', 1986),
('Divididos', 1986),
('Los Auténticos Decadentes', 1983),
('Charly García', 1972, '(Considerado su carrera solista)');


INSERT INTO Albumes (TituloAlbum, ID_Banda, AñoLanzamiento, Género) VALUES
('Nada Personal', 1, 1985, 'Rock Alternativo'),
('Oktubre', 2, 1985, 'Rock Psicodélico'),
('Amor Amor', 3, 1994, 'Rock Alternativo'),
('Yo Soy Más', 4, 1995, 'Ska'),
('Clics Modernos', 5, 1983, 'Rock Pop');

INSERT INTO Pistas(TituloPista, ID_Album, Duración) VALUES
    ("Persiana Americana", 1, "04:23"),
    ("Luzbelito", 2, "00:05:12"),
    ("El Habitante", 3, "00:04:05"),
    ("Matador", 4, "03:21"), 
    ("No Me Conocés", 5, "04:18"); 