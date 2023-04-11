-- SELECT SU SELECT (SELECT NIDIFICATE)(SOTTO SELECT)
-- CALCOLO ETA MEDIA ATLETI
SELECT AVG(eta) FROM atleti;

-- INTERROGAZIONE: atleti più giovani della media
SELECT cognome, nome FROM atleti WHERE eta < (SELECT avg(eta) FROM atleti);

-- INTERROGAZIONE: LISTA DI ATLETI CON ETA MASSIMA
SELECT eta,cognome, nome FROM atleti WHERE eta = (SELECT MAX(eta) FROM atleti);

-- INTERROGAZIONE: LISTA DI ATLETI ETA MINIMA
SELECT eta,cognome, nome FROM atleti WHERE eta = (SELECT MIN(eta) FROM atleti);

-- INTERROGAZIONE: ELENCO DELLE NAZIONI CON ATLETI CON PIU' DI 22ANNI
SELECT nomenazione FROM nazioni 
WHERE idnazione = ANY (SELECT idnazione FROM nazioni, atleti WHERE idnazione=nazione  >22);

SELECT idnazione, cognome, nome FROM nazioni, atleti WHERE idnazione= nazione AND eta >22;