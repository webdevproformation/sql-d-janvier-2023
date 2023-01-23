-- 03-table-fin.sql 

-- base 
-- table 
-- column
-- type => TEXTE / CHIFFRE / DATE 

-- en plus du type des colonnes il est possible et conseillé d'ajouter des informations en plus pour bien décrire les colonnes 

-- créer une table arbres 
-- 5 colonnes 
-- id chiffre entier maximum de 127 CLE PRIMAIRE dont la valeur est autoincrémentée
-- nom texte maximum de 120 lettres et par défaut "saisir un nom"
-- prix chiffre à virgule maximum de 127 et par défaut sa valeur 10
-- dt_plantation date et par défaut c'est aujourd'hui 
-- etat deux valeurs possibles par défaut VRAI 

--SQLITE
CREATE TABLE arbres (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(120) DEFAULT "saisir un nom" ,
    prix FLOAT DEFAULT 10 ,
    dt_plantation DATE DEFAULT CURRENT_DATE ,
    etat BOOLEAN DEFAULT TRUE 
);

-- MariaDB / MySQL 
CREATE TABLE arbres (
    id TINYINT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(120) DEFAULT "saisir un nom" ,
    prix FLOAT DEFAULT 10 ,
    dt_plantation DATE DEFAULT CURRENT_DATE , -- CURRENT_TIME / CURRENT_DATETIME
    etat BOOLEAN DEFAULT TRUE 
);

-- clé primaire colonne qui contient des valeurs qui vont permettre de distinguer chaque ligne contenue dans le tableau de manière unique 
-- une table ne peut contenir 1 seul colonne de type clé primaire 
-- PK => Primary Key
-- FK -- Foreign Key 

-- autoincrémentée ++ 
-- SGBD qui va remplir cette colonne automatiquement avec la valeur qui va bien 



-- créer le requête permettant de créer la table suivante 
-- exo4

-- 6 colonnes 
-- id clé primaire
-- largeur chiffre entier maximum de 15000 par défaut sa valeur = 0
-- hauteur chiffre entier maximum de 15000 par défaut sa valeur = 0
-- unite texte de 2 caractères maximum et sa valeur par defaut km 
-- dt_creation date et heure par défaut maintenant 
-- description 65 caractères maximum 

CREATE TABLE exo4 (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    largeur SMALLINT DEFAULT 0 ,
    hauteur SMALLINT DEFAULT 0 ,
    unite VARCHAR(2) DEFAULT "km" ,
    dt_creation DATETIME DEFAULT CURRENT_DATETIME ,
    description VARCHAR(65)
);

-- TIMESTAMP => TIME + STAMP => horodateur nombre de secondes entre maintenant et le 1er janvier 1970 

-- CRUD 
-- CREATE ajouter des lignes dans une table
-- Read récupérer des lignes
-- UPDATE des lignes
-- DELETE supprimer des lignes 


-- TABLE et ses colonnes leur type / infos en + 
-- => SCHEMA de la table 




