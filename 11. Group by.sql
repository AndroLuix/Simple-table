-- IL COMANDO GROUP BY
-- creare lista di atleti con età senza doppioni
sELECT eta, COUNT(*) AS'numero atleti'
FROM atleti GROUP BY eta;

-- creare lista di atleti x eta nazione grecia senza doppioni
SELECT eta, COUNT(*) AS'numero atleti'
FROM atleti WHERE nazione != 3 group BY eta;

-- SELECT eta FROM atleti;

-- CLAUSOLA HAVING
-- se vogfliamo cercare i gruppi di atleti che hanno almeno 2 con la stessa eta
SELECT eta, COUNT(*) AS'numero atleti'
FROM atleti WHERE nazione GROUP BY eta having COUNT(*) >1;

-- INTERROGAZIONE CHE MOSTRA MAGGIORENNI
SELECT eta, COUNT(*) AS 'numero atleti maggiorenni' 
FROM atleti WHERE nazione GROUP BY eta HAVING eta >= 18;

-- INTERROGAZIONE CHE ESCLUDA I FASCIA DEI 26ENNI
SELECT eta, COUNT(*) AS'atleti non 26enni' FROM atleti azione GROUP BY eta HAVING eta!=26;

-- JOIN: TUTTI GLI ATLETI E TUTTE LE DISCIPLINE CHE DOVRANNO SVOLGERE
SELECT idAtleta, cognome, disciplina FROM atleti, atletidiscipline
WHERE idAtleta=atleta;

-- INTERROGAZIONE: Quante discipline pratica ogni atleta
SELECT idAtleta, cognome, COUNT(*) FROM atleti, atletidiscipline
WHERE idAtleta=atleta
GROUP BY idAtleta, cognome;

-- INTERROGAZIONE: ESCLUDERE LA DISCIPLINA MARATONA
SELECT cognome, nome, COUNT(*) FROM atleti, atletidiscipline, discipline
WHERE idAtleta=atleta AND idDisciplina=disciplina and nomeDisciplina != 'maratona'
GROUP BY idAtleta, cognome;

-- INTERROGAZIONE: ESCLUDERE LA DISCIPLINA LANCIO DEL PESO
SELECT cognome, COUNT(*)'discplina' FROM atleti, atletidiscipline, discipline
WHERE idAtleta=atleta AND idDisciplina=disciplina and nomeDisciplina != 'lancio del peso'
GROUP BY idAtleta, cognome ORDER BY cognome DESC;

-- SELECT SU SELECT (SELECT ANNIFICATE)(SOTTO SLECT)
-- CALCOLO ETA MEDIA ATLETI
SELECT AVG(eta) FROM atleti;

-- atleti più giovani della media
SELECT cognome FROM atleti WHERE eta <(SELECT avg(eta) FROM atleti)