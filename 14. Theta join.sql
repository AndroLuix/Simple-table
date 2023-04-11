
-- CREATE TABLE modello (idModello INT (1) AUTO_INCREMENT, Modello CHAR(20), Cv INT(2), anno DATE, Chilometraggio INT(1), carburante CHAR(20),
-- Prezzo INT(1), ksMarca INT (1) , ksTipologia INT (1), PRIMARY KEY (idModello));

-- CREATE DATABASE cooncessionaria

-- CREAZIONE TAB INIZIO
-- INSERT INTO modello ( Modello, Cv, anno, Chilometraggio, carburante, Prezzo, ksMarca, ksTipologia) 
-- VALUES ('Fiesta', 82, '2011-03.14', 25000, 'Benzina', 10000, 1,1);
-- VALUES ('Q7', 239, '2011-08.23', 7700, 'Diesel', 48600, 2,1);
-- VALUES ('Focus', 116, '2023-02.02', 9000, 'Diesel', 9500, 1,2);
-- VALUES ('X5', 150, '2023-09.6', 0, 'Benzina', 77000, 3,1);
-- VALUES ('Astra', 90, '2017-05.23', 110000, 'Metano', 4000, 4,2);
-- FINE CREAZIONE TAB



-- UTILIZZO DELLA TETA JOIN
-- si chiede di elencare dalla tab1 e modello e affianco il nome di unaltro modello.


SELECT tab1.modello, tab2.modello 
FROM modelli AS tab1 INNER JOIN modelli AS tab2 ON tab1.anno < tab2.anno -- anno di fiesta < anno dell'altra riga coinvolta nella join
AND  tab1.modello = 'Fiesta';
-- fine



