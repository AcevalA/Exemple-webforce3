Exerice 1 :
Écrire la requête qui permet d'afficher (sélectionner) les noms de famille et l'adresse email de l énsemble des consommateurs de la base "sakila"

SELECT first_name,email FROM customer

Exercice 2 :
Écrire la requête qui permet d'afficher toutes les transactions du 23 août 2005

SELECT *FROM payment
WHERE DATE (payment_date)='2005-08-23' 

Exercice 3 : Sélectionner les quinze premiers paiements lors de la Saint Valentin 2006

SELECT *FROM payment
WHERE DATE (payment_date)='2006-02-14'
ORDER BY payment_date ASC
LIMIT 15

