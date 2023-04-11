-- 7. Eliminare record e estrarre i record
-- cancellare atleta Pino Neri
DELETE FROM atleti WHERE idatleta = 11;
-- sintatti uguali per SQL Server
-- la cancellazione si riferisce a tutta la riga a tutti i campi
-- CANCELLARE TUTTI GLI atleti FRANCESI
DELETE FROM atleti WHERE nazione = 2; 
-- aggiorno con F5

-- ELIMINA ATELTI FRANCESI SECONDO METODO: 
-- DELETE FROM atleti WHERE nazione = <espressione che corrisponde al codice della francia>
-- IL COMANDO SELECT: 
-- essa lavora su una tabella per volta: possiamo indicare criterio e tabella (è più selettivo)
-- SELECT cognome, nome FROM atleti; 
-- risultato: possiamo vedere tutti i nomi e cognomi della tabella atleti
-- quindia abbiamo estratto.

-- SELECT cognome, nome FROM atleti WHERE nazione = 1;
-- SELECT idnazione FROM nazioni WHERE nomenazione = 'Francia';

-- CANCELLAZIONE DELLA FRANZIA DALLA LISTA
-- DELETE FROM atleti WHERE nazioni = (SELECT idnazione FROM nazioni WHERE nomenazione = 'francia');

-- PRENDERE PIU INFROMAZIONI DALLE TABELLE
-- metodo errato:
 SELECT cognome, nome FROM atleti where eta = 12 OR 19;
 
 -- metodo esatto:
 -- estrazione atleti tra i 20 e 40anni
 SELECT cognome, nome, eta FROM atleti WHERE eta >= 20 AND eta <=40;
 
 -- estrazione atleti con 20 o 40 anni
 SELECT cognome, nome, eta FROM atleti WHERE eta = 20 AND eta = 40;
 
 -- ALTERNATIVA: COMANDO BETWEEN
-- SELECT cognome, nome, FROM atleti WHERE eta BETWEEN 20 AND 40;
 
-- ESTRARRE DATI DI ATLETI NATI TRA IL 1982-01-01 E IL 1991-07-31
SELECT * FROM atleti WHERE dataNascita BETWEEN '1082-01-01' AND '1991-07-31';

