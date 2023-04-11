-- IL COMANDO ORDER BY
-- esempi di select: ordine alfabetico
-- SELECT nome FROM atleti ORDER BY nome;



-- campo cognome idicizzato, quindi in automatico viene in ordine alfabetico trattandosi di un char
SELECT nome FROM atleti;
 
 
 -- IL COMANDO ORDER BY
 -- estrarre in ordine alfabetico il cognome, facendo uscire insieme all'eta
 SELECT cognome, eta FROM atleti ORDER BY cognome; 
 -- in ordine all'eta
  SELECT cognome, eta FROM atleti ORDER BY eta; 
SELECT cognome, eta FROM atleti ORDER BY cognome, eta;


-- IL COMANDO DESC:
-- in orfine discendente
SELECT cognome, eta FROM atleti ORDER BY cognome desc,eta; -- dalla Z alla A
   SELECT cognome, eta FROM atleti ORDER BY cognome ,eta DESC; -- dal più anziano al piu giovane
   
SELECT cognome, eta FROM atleti ORDER BY cognome desc ,eta DESC;

-- ESTRARRE INFORMAZIONI DA PIU TABELLE

-- elenco esteso, infatti mostra troppe volte lo stesso risultato
SELECT nomeNazione, cognome, nome
FROM nazioni, atleti;
-- bisogna quindi mettere dei criteri: 
-- la riga dell'italia è stata combinata, lo stesso con la francia, e lo stesso con germania, 
-- combinando tutti i nomi con le nazioni. 
-- dobbiamo indicare a MySQL un criterio per combinare bene gli atleti e le nazioni
-- siccome ogni nazione ha un codice: es italia = 1, utilizzeremo i codici. 
-- la francia non dovrebbe proprio apparire. 
-- idNazione = nazione con le chiavi. 
-- 
-- COMANDO CORRETTO:

SELECT nomeNazione, cognome, nome
FROM nazioni, atleti WHERE idNazione=nazione;

-- bisgona mettere in ordine. con order by nominazione
SELECT nomeNazione, cognome, nome
FROM nazioni, atleti WHERE idNazione=nazione ORDER BY nomeNazione;
