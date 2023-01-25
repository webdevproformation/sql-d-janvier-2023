

CREATE TABLE `table` (
    `date entree` DATETIME ,
    nom VARCHAR(200),
    age SMALLINT
);

SELECT `date entree` , nom AS `nom complet` , age , `age`
FROM `table` ;


------------

1 créer les tables 

4 grands types opérations de base dans une table  - CRUD 
- CREATE 

INSERT INTO nom_table (col, col) VALUES (1,2); -- insérer 1 ligne 
INSERT INTO nom_table (col, col) VALUES (1,2),(1,2),(1,2); -- insérer 3 lignes
INSERT INTO nom_table VALUES (1,2),(1,2),(1,2);-- insérer 3 lignes en respectant ordre de la structure de la table 

- READ 

SELECT col, col , col FROM nom_table ; 
-- récupérer toutes les valeurs de certaines colonnes (3) de la table 

SELECT * FROM nom_table ; 
-- toutes les valeurs / toutes les colonnes en respectant le schema et l'ordre d'insertion

SELECT col AS `nouveau nom`, col , col FROM nom_table ; 
-- récupérer toutes les valeurs de certaines colonnes (3) de la table 
-- et renommer une colonne UNIQUEMENT dans l'extraction (ça ne modifie pas la structure de la table)

SELECT strftime("%Y", col) FROM nom_table
-- récupérer qu'une colonne de la table et les valeurs affichées sont transformées => récupérer l'année d'une date
=> https://www.w3schools.com/sql/func_mysql_makedate.asp

SELECT (CASE col WHEN "valeur" THEN "si vrai" ELSE "si faux" END) FROM  nom_table ;

-- limiter le nombre de ligne dans notre extraction de données 

SELECT * FROM nom_table WHERE col = "valeur" ; // = == != > < <= >= LIKE  
                                               // BETWEEN colmin AND colmax
                                               // IN  (1,2,3)

SELECT * FROM nom_table WHERE col = "2023-01-01" ;
SELECT * FROM nom_table WHERE strftime("%Y", col) = "2023" ; 
-- possible de mettre des fonctions SQL dans la clause WHERE à comparer à une valeur 

SELECT * FROM nom_table WHERE col1 = 10 AND col2 = 30 ; 
SELECT * FROM nom_table WHERE col1 = 10 OR col2 = 30 ; 

-- agrégation => regrouper des lignes d'une table

-- lorsque vous utilisez des fonctions sur les colonnes dans un SELECT 

SELECT COUNT(*)
       MIN() MAX() SUM() AVG() 
       GROUP_CONCAT()
FROM nom_table 
GROUP BY col => colonne de regroupement / colonne de ventilation


SELECT COUNT(*)
       MIN() MAX() SUM() AVG() 
       GROUP_CONCAT()
FROM nom_table 
GROUP BY col
HAVING COUNT(*) > 10 ; -- filtrer (ressemble à un WHERE) sur un groupement de ligne
                       -- attention WHERE filtrage sur des lignes (non regroupée)

-- ORDER BY col ASC / DESC => trier Ascendante ou Descendante le résultat de notre extraction                     

- UPDATE 

UPDATE nom_table SET col = 1 , col = 2 WHERE nom_col = 1 ;

- DELETE 

DELETE FROM nom_table WHERE nom_col = 1 ; 