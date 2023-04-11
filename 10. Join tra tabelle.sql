-- vogliamo ottenere un elenco: 
-- cognome | nome | nomeDisciplina
-- CODICE JOIN

-- CODICE ERRATO: CHE MISCHIA TUTTO.
SELECT cognome, nome, nomeDisciplina
FROM atleti, discipline;

-- CODICE QUASI ESATTO: per fare bisogna con la tabella  intermedia atletidiscipline e congiungere discipline e atleti
-- quindi il codice esatto è:
SELECT cognome, nome, eta, nomeDisciplina
FROM atleti, atletidiscipline, discipline 
WHERE idAtleta=atleta AND idDisciplina = disciplina; 

-- QUESTO METODO PERO' CREA DOPPIONI: 
-- la soluzione è il comando ORDER BY, che serve per ordinare la 
-- tabella ed evitare doppioni di atleti che praticano la stessa disciplina
-- CODICE ESATTO: 
SELECT cognome, nome, nomeDisciplina
FROM atleti, atletidiscipline,discipline
WHERE idAtleta=atleta AND idDisciplina=disciplina
ORDER BY nomeDisciplina, cognome;

-- OPPURE
SELECT cognome, nome, nomeDisciplina, nomeNazione
FROM atleti, atletidiscipline,discipline, nazioni
WHERE idAtleta=atleta AND idDisciplina=disciplina AND idNazione=nazione
ORDER BY nome, cognome, nomeNazione;

-- ORA VOGLIAMO OTTENERE UNA TABELLA CON DUE COLONNE: 1 COLONNA ETA | 2 COLONNA NUMERO ATLETI
-- raggruppare tutte le righe delll'età 
-- poi ogni gruppo chiedere una riga assuntiva
-- ad ordine cronoloico di età
-- il raggruppamento consente di comporre una riga riasuntiva, ove possiamo chiedere il valore che non cambia di ogni gruppo
SELECT eta, COUNT(*)AS'numero atleti' FROM atleti GROUP BY eta;
-- se eta è nella SELECT deve essre preso anche nel GROUP by

-- RISULTATO: 2 ATLETI CON 26 ANNI, il resto ha eta diverse
