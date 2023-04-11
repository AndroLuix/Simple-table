-- elenco atleti più giovani
-- IL COMANDO AS E IL COMANDO AVG
SELECT cognome AS'giovani atleti' FROM atleti WHERE eta< (SELECT AVG(eta) FROM atleti);

-- IL COMANDO COUNT
-- La funzione di aggregazione COUNT dell'SQL restituisce un intero che indica il numero di record trovati.
-- cerchiamo quanti giovani vi sono tra gli atleti come quantità di numero.
-- il comando count crea un indice ove mostra la quantità di cosa si cerca.
select COUNT(*) AS 'atleti giovani' FROM atleti WHERE eta BETWEEN 18 AND 25;
-- più anziani
select COUNT(*) AS 'atleti anziani' FROM atleti WHERE eta >25;
-- atleti con 21anni
SELECT count(*) AS'atleti di 21anni' FROM atleti WHERE eta = 21;

SELECT count(cf) AS'atleti di 21anni con cf' FROM atleti WHERE eta = 21;


-- IL COMANDO DISTINCT:
-- vedere le eta senza doppioni:
SELECT  eta FROM atleti; -- questo è con i doppio
SELECT DISTINCT eta FROM atleti; -- senza doppioni


-- IL COMANDO SUM
SELECT SUM(eta) FROM atleti; -- somma di tutte le eta.