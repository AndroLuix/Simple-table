-- con la seguente chiamata elenchiamo le nazioni con gli atleti con maggiore eta = 20 COMANDO IN
SELECT nomenazione FROM nazioni WHERE 
idnazione IN (SELECT idnazione FROM nazioni, atleti WHERE idnazione=nazione AND eta>20);
-- adesso con il comando NOT IN
SELECT nomenazione FROM nazioni WHERE 
idnazione NOT 
IN (SELECT idnazione FROM nazioni, atleti WHERE idnazione=nazione AND eta>20);

-- COMANDO !=ALL OSSIA DIVERSO DA TUTTI QUELLI SELEZIONATI DALLA SOTTO SELECT (TRA PARENTESTI)
SELECT nomenazione FROM nazioni WHERE 
idnazione != all (SELECT idnazione FROM nazioni, atleti WHERE idnazione=nazione AND eta>20);


-- elenco degli atleti della stessa nazione di neri Santino: COMANDO =ANY
SELECT cognome FROM atleti 
WHERE nazione = ANY (SELECT nazione FROM atleti, nazioni WHERE 
-- condizione di JOIN:
idnazione=nazione and cognome = 'Arione' AND nome = 'giulio');
-- nel codice il nome e cognome sono dello stesso atleta. (escono tutti gli atleti dello stesso id del cognome scelto)
-- any è necessario per evitare ononimi, ovvero se ci sono più neri santino di più nazioni diverse. 

-- ELENCO NAZIONI CHE HANNO ALMENO UN ATLETA 
-- COMANDO Exists
-- EXISTS (SELECT * );

 SELECT nomenazione FROM nazioni WHERE EXISTS (SELECT* FROM nazioni, atleti WHERE idnazione=nazione AND nomenazione=nomenazione);
-- questo coamando di select  stiamo selezionando l'elenco delle righe degli atletic he stiamo selezionando. 
-- se una delle nazioni non ha etlati non verra elencata nella tabella.

-- METODO MIGLIORE PER SCRIVER IL CODICE: 
SELECT naz.nomenazione FROM nazioni AS naz 
WHERE EXISTS (SELECT * FROM nazioni, atleti WHERE idnazione=nazione AND nazioni.nomenazione = naz.nomenazione);

SELECT naz.nomenazione FROM nazioni AS naz 
WHERE not EXISTS (SELECT* FROM nazioni, atleti WHERE idnazione=nazione AND nazioni.nomenazione = naz.nomenazione);







