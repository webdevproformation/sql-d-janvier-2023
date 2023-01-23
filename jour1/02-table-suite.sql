-- 02-table-suite.sql 

-- concepts centraux des bases de données relationnelles 

-- base de données => permet de stocker des TABLES

-- TABLE => concept 
-- etudiants
-- formation

-- COLUMN différentes parties du concepts
-- nom
-- age 
-- prenom 
-- date de naissance 

-- chaque colonne associer un TYPE 
-- le nature des informations 
-- 3 grandes familles 

-- TEXTE 
-- CHIFFRES
-- DATE 

-- rappel en js => string / number / boolean / array / object 

-- dans le type TEXTE, le SQL distingue plusieurs sous type 
-- chaque sous type va dépendre du nombre de caractère que l'on veut stocker 

-- CHAR(0 - 255) => CHAR(12) => je veux stocker un texte qui contient EXACTEMENT 12 lettres
--                              code pays : fr en es                              
-- VARCHAR (0 - 255) => idéal pour des petits textes 
--                      prénom nom rue ville titre article 
--                      nombre de caractères VARIABLES => avec un nombre maximum de lettres 
--                      si vous utilisez moins de lettre que le chiffre annoncé 
--                      SGBD va essayer de mettre le moins de vide possible sur le disque dur 
-- 256 = 2 ^ 8 
-- TEXT => = texte avec un maximum de 2 ^ 16 => 65 535
-- MEDIUMTEXT => 2 ^ 32 =>  	16 777 215
-- LONGTEXT => 2 ^ 64  =>       4 294 967 295
-- BLOB  => BIG Large OBJECT    => dvd / image / logiciel 

-- cas pratique 
-- créer une nouvelle table qui s'appelle exo1 
-- stocker 4 colonnes 
-- code exactement 10 lettres 
-- titre maximum de 230 lettres 
-- description maximum de 65 milles lettres
-- auteur maximum de 100 lettres 

-- créer la requ^te sql qui permet de créer cette table , exécuter et afficher cette table dans l'explorateur

CREATE TABLE exo1 (
    code CHAR(10) ,
    titre VARCHAR(230),
    description TEXT ,
    auteur VARCHAR(100)
);
-- TEXT MEDIUMTEXT LONGTEXT ecrire le type sans parenthèses et nombre de lettre 
-- ne pas mettre de , après la dernière colonne

-- si je me suis trompé dans les types et / ou dans les noms colonnes / table 

-- MySQL 
-- ALTER TABLE MODIFY titre TEXT ; 

-- SQlite 
DROP TABLE exo1 ; 
CREATE TABLE exo1 (
    code CHAR(10) ,
    toto VARCHAR(230) ,
    description TEXT ,
    auteur VARCHAR(100)
);

DROP TABLE premier ; 
CREATE TABLE premier (
    nom VARCHAR(10) 
);


-- chiffre
-- chiffres entiers  0 1 2 
-- TINYINT 2 ^ 8 => -128 à 127
-- SMALLINT 2 ^ 16  => -32 768 à 32 767
-- MEDIUMINT 2 ^ 32  => +/- 16 millions
-- INT       2 ^ 64  => +/- 4 milliards
-- BIGINT            => +/- 9000 milliard de milliards 

-- chiffre à virgule  1.3 
-- FLOAT 2 ^ 8
-- DECIMAL  2 ^ 16 
-- DOUBLE  2 ^ 32

-- chiffres spéciaux  0 1 
-- BOOLEAN 

-- exo créer une nouvelle requête qui permet de créer de table
-- exo2

-- 6 colonnes
-- id contient exactement 4 lettres
-- titre maximum de 220 lettres
-- prix chiffre à virgule avec de chiffres 127 
-- etat qui n'a que deux valeurs possibles
-- description maximum de 65 mille lettres
-- duree chiffre entier maximum de 250 

-- const premier_paragraphe 

DROP TABLE IF EXISTS exo1 ;
CREATE TABLE exo1 (
    toto VARCHAR(100) 
);

-- correction

CREATE TABLE exo2 (
    id CHAR(4) ,
    titre VARCHAR(220) ,
    prix FLOAT , 
    etat BOOLEAN ,
    description TEXT ,
    duree SMALLINT 
);

-- DATE

-- DATE AAAA-MM-JJ
-- DATETIME AAAA-MM-JJ HH:MM:SS
-- TIME  HH:MM:SS

-- créer une requête qui permet de créer une table 
-- exo3

-- contient 7 colonnes 
-- id chiffre entier maximum 32 767
-- titre texte maximum de 255 caractères
-- description texte maximum de 65 mille caractères
-- code_auteur 5 lettres exactement
-- duree_lecture chiffre entier maximum 120
-- date_publication date et heure
-- prix chiffre à virgule maximum 5000.00

CREATE TABLE exo3(
    id SMALLINT ,
    titre VARCHAR(255) ,
    description TEXT , 
    code_auteur CHAR(5) ,
    duree_lecture TINYINT ,
    date_publication DATETIME ,
    prix DECIMAL 
);