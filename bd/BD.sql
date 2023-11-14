
USE freedb_myLibrary;

CREATE TABLE library (
    idBook INT auto_increment primary key,
    title VARCHAR(45) not null,
    author VARCHAR(45) not null,
    genre VARCHAR(30) not null,
    release_year INT,
    country VARCHAR(45) not null,
    description VARCHAR(300) not null
    );
    
INSERT INTO library (title, author, genre, release_year, country, description) VALUES ("We Have Always Lived in the Castle", "Shirley Jackson", "Horror", 1962, "United States", "We Have Always Lived in the Castle is a deliciously unsettling novel about a perverse, isolated, and possibly murderous family and the struggle that ensues when a cousin arrives at their estate.");
INSERT INTO library (title, author, genre, release_year, country, description) VALUES ("El país de las mujeres", "Gioconda Belli", "Fiction", 2010, "Nicaragua", "En Faguas –país imaginario que aparece en las novelas de Gioconda Belli– ha triunfado el PIE (Partido de la Izquierda Erótica). Sus integrantes tienen un propósito inclaudicable: cambiar el rumbo de su país, limpiarlo a una casa descuidada.");
INSERT INTO library (title, author, genre, release_year, country, description) VALUES ("Apegos feroces", "Vivian Gornick", "NonFiction", 1987, "United States", "Gornick, una mujer madura, camina con su madre, ya anciana, por las calles de Manhattan, y en el transcurso de esos paseos llenos de reproches, de recuerdos y complicidades, va desgranando el relato de la lucha de una hija por encontrar su propio lugar en el mundo.");

SELECT * FROM library WHERE idBook = 2;
SELECT * FROM library;

UPDATE library SET title = "Love, Guilt and Reparation", author = "Melanie Klein", genre = "NonFiction", release_year = 1975, country = "England", description = "This book shows the growth of Melanie Klein's work and ideas between 1921 and 1945, and traces her theories on childhood development, criminality and childhood psychosis, symbol formation, and the early development of conscience" WHERE idBook = 6;