-- creazione di una tabella in unaltro database
-- CREATE TABLE cittadini (idCittadino int (3)AUTO_INCREMENT, nome CHAR (30), ksconiuge INT(3) UNSIGNED, cognome CHAR (30), PRIMARY KEY (idCittadino));
-- FINE


-- INSERIMENTO RECORD (OSSIA DATI DENTRO LA TABELLA) NELLA TABELLA CITTADINI
-- INSERT INTO cittadini (nome, cognome, ksconiuge) VALUES ('Mario', 'Rossi', 3);
-- INSERT INTO cittadini (nome, cognome, ksconiuge) VALUES ('Sandro', 'Verdi', 0);
-- INSERT INTO cittadini (nome, cognome, ksconiuge) VALUES ('Maria','La Rossa', 1);
-- FINE




-- CREAZIONE MOMENTANE CLONAZIONE DI UNA INTERA TABELLA CON IL SEGUENTE COMANDO:
SELECT cittadini.nome, cittadini.cognome, cittadini2.nome, cittadini2.cognome
FROM cittadini, cittadini AS cittadini2
WHERE cittadini.idcittadino = cittadini2.ksconiuge
-- FINE

-- Alla prossima lezione si passa agli INNER Join