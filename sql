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

Exercice : Renommer sa base de jeux video pour que son nom soit unique (par exemple "jeux.MONNOM"), 
l'importer sur PHPMYADMIN puis insérer 5 lignes dans deux tables différentes avec des requêtes SQL.

INSERT INTO artisti(nome, nazione, dataNascita, dataMorte)
VALUES 
('ABCD','france','1970-03-23','2002-07-13')

UPDATE table
SET nom_colonne_1 = 'nouvelle valeur'
WHERE condition

UPDATE artisti
SET pays = 'FRANCE'



Exercice : Utiliser DELETE pour supprimer une ou plusieurs ligne dans la base 

DELETE FROM `utilisateur`
WHERE `id` = 1

Exercice : Créer une table supplémentaire avec l'instruction CREATE TABLE (en définissant les colonnes, leur type etc.).
Insérer des données dans cette table grace à INSERT en respectant les datatypes. Puis supprimer la table à l'aide de l'instruction DROP TABLE.

CREATE TABLE test
(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(255),
    date_naissance DATE,
    pays VARCHAR(255),
    ville VARCHAR(255),
    code_postal VARCHAR(5),
    nombre_achat INT
)

DROP TABLE test

Exercice : 
Réaliser les jointures INNER JOIN et FULL OUTER JOIN d'après les exemples du lien suivant : https://sql.sh/cours/jointures

créer base 

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);
