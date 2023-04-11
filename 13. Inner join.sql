										/* Lo Joins si suddivide in due classi 
			 la prima è quella definita Inner Joins (Joins interne) e la seconda invece Outer Joins (Joins Esterne)
			 
			 INEER JOIN
			 Inner Joins esempio di codice SQL: 1.esempio codice senza join:
			 select* from Comuni, Vie where comuni.Idcomune = Vie.ksComune
			 
			 Esempio di Equis Join: 2.esempio con join
			 select * from Comuni inner join Vie on idComune = ksComune where nomeComune = 'Milano'
			 
			 
			 
			 Esempio di NATURAL Join: 
			 1. codice senza Natural Join:
			 select * from  Comuni, Vie where Comuni.IDComune = Vie.IDComune
			 
			 2. codice con Natural Join
			 select*from Comuni natural join Vie
			 
			 NATURAL JOIN: Congiunzione tra due tabelle che hanno lo stesso nome.
			*/