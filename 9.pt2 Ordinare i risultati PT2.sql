-- PRENDERE DUE TABELLE: 
-- CONDIZIONE DI JOIN (CONGIUNZIONE)
SELECT nomeNazione, cognome, nome, eta
FROM nazioni, atleti WHERE idNazione=nazione ORDER BY nomeNazione;
-- notare che per dare ugualianza tra chiave primaria e chiave esterna non necessario usare la select ma from nazione e atleti