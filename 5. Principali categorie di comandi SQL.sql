-- creare tabelle
-- COMANDO CREATE
-- COMANDO TABLE
-- CREATE TABLE citta (idcitta INT (1), nomeCitta CHAR (30)olimpiadi NOT NULL, cap INT(6), primary KEY (idcitta));
-- int 3 è un ampizza delle cifre da mettere 
-- ATTENZIONE: BISOGNA METTERE 6 CIFRE SU INT PER EVITARE CHE ESCANO DEGLI 0 PER ESSERE OCCUPATI
-- è SEMPRE NECESSARIO INDICARE LA CHIAVE PRIMARIA 
-- NOTA: HO AGGIUNTO MANUALMENTE LA UNIQUE KEY SU "cap" POICHE' UNIVOCA.

-- ELIMINIAMO LA TABELLA CITTA:
-- !! DROP TABLE citta;

-- RICREARE TABELLA CON IL COMANDO UNIQUE
-- CREATE TABLE citta (idcitta INT (1) NOT NULL, nomeCitta CHAR (20), cap INT(6) UNIQUE, primary KEY (idcitta));

-- DROP TABLE citta

-- RICREARE TAB CITTA' E METTERE UN INDICE
-- vantaggio di un indice:  velocizzare di molto le ricerche che coinvolgono come criterio quel campo.
-- svantaggio: vengono un po' rallentati inserimenti e cancellazione (devessere aggiornato anche l'indice)
-- CREATE TABLE citta (idcitta INT(1) NOT NULL, nomeCitta CHAR(25), cap INT(6) UNIQUE, PRIMARY KEY(idcitta), INDEX (nomeCitta));

-- attenzione, gli indici sono pesnanti: troppi indici possono rallentare

CREATE TABLE genere (idgenere INT(1) NOT NULL auto_increment, sesso CHAR (1) DEFAULT 'M', PRIMARY KEY(idgenere));
-- COMANDO AUTO_INCREMENT: si puo imporre solo a un int: serve a incrementare il valore dellc chiave primaria sarà incrmentata di 1

-- I COMANDI PER MODIFICARE LE TABELLE
