-- MODIFICARE LA STRUTTURA DI UNA TABELLA
-- COMANDO ALTER TABLE

-- AGGIUNTA DI UNA COLONNA
-- ALTER TABLE citta ADD  provincia CHAR(40);

-- eliminazione colonna
-- ALTER TABLE citta DROP provincia

-- AGGIUNTA DI UN INDICE
-- ALTER TABLE citta ADD INDEX (provincia);

-- CAMBIO NOME INDICE  
-- ALTER TABLE citta ADD INDEX province (provincia)

-- RIMOZIONE INDICE;
-- ALTER TABLE citta DROP INDEX provincia_4;

-- SALVARE CLICK DESTRO DOWNLOAD FILE
-- CARICA FILE CLICK DESTRO LOAD TO FILE

-- INERIMENTO RECORD TABELLA CITTA
-- COMANDO INSERT
-- COMANDO INTO

-- INSERT INTO citta values (1, 'Ercolano', 80056, '(NA)');

-- ALTRO METODO INSERIMENTO IMMEDIATO CON PRIMARY KEY INCREMENTO AUTOMATICO
-- INSERT INTO citta ( nomeCitta, cap, provincia) VALUES ('Torre del Greco', 80059, '(NA)');
-- INSERT INTO citta (nomeCitta, cap, provincia) VALUES ('Portici',80055,'(NA)');
-- INSERT INTO citta (nomeCitta, cap, provincia) VALUES ('San Giorgio a Cremano',80046, '(NA)');
-- INSERT INTO citta (nomeCitta, cap, provincia) VALUES ('Castellamare', 80011,'NA');

-- COMANDO UPDATE: 
-- SERVE A MODIFICARE UN RECORD, UN CAMPO, ETC
-- ES MOFIDICHIAMO CAP DI CASTELLAMARE
-- UPDATE citta SET cap = 80053 WHERE idcitta = 8;
-- update citta SET nomeCitta = 'Castellammare' WHERE idcitta=11; 
