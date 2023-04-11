SELECT * FROM atleti WHERE dataNascita BETWEEN '1082-01-01' AND '1991-07-31';
-- carattere jolly
-- CERCHIAMO DI TROVARE UN COGNOME CHE INIZIA CON 'NER'
SELECT * FROM atleti WHERE cognome LIKE 'Ner%';
-- risultati: Nerone e Neruda

-- cerchiamo con una sequenza di caratteri
SELECT * FROM atleti where cognome LIKE 'Ner_';

-- cerchiamo cognome con 4 caratteri e cognome con 5 caratteri (numero dato dagli underscore)
SELECT * FROM atleti where cognome LIKE '____' or cognome like '_____';

-- Trovare l'età dove c'è il NOT null
SELECT * FROM atleti WHERE eta IS NOT NULL;

-- Trovare l'età dove c'è il null
SELECT*FROM atleti WHERE eta IS NULL ;


-- OPERATORE MIN e MAX
-- trovare l eta minima:
SELECT MIN(eta) FROM atleti; -- eta min 18
SELECT max(eta) FROM atleti; -- eta max 26

-- trovare nome cognome atleta piu giovane e piu anziano:
-- MODO ERRATO
-- SELECT cognome, nome WHERE eta = MAX (eta) from atleti;

-- BISGONA USARE LA SELECT ANNIDATA: METODO ESATTO
SELECT cognome, nome FROM atleti WHERE eta = (SELECT MIN(eta) AND MAX(eta) FROM atleti);

-- COMANDO AVG: IN QUESTO CASO CALCOLO ETA MEDIA:
	-- SELECT AVG(eta)FROM atleti;
	-- avg serve per fare la media, in questo caso dell'età.
	
-- possiamo cambiare il nome della colonna estratta
SELECT AVG(eta) AS 'media dell\'eta degli atleti' FROM atleti;
-- (esempio pratico fatto da me)SELECT cognome FROM atleti WHERE eta LIKE 21

	
