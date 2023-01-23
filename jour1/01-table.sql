/* commentaire en javascript */
/* commentaire en SQL */

-- commentaire monoligne en SQL *

-- Quelquesoit le SGBD il faut créer au préalable une ou des TABLE pour stocker les informations que l'on voudra utiliser

-- écrit en SQL les mots clé du langage sont écrits en MAJUSCULE 

-- créer une table qui s'appelle premier
-- cette table contient une colonne qui s'appelle nom qui stocker des informations de type VARCHAR(200) des textes avec un maximum de 200 lettres 

CREATE TABLE premier (
    nom VARCHAR(200)
); 

-- SQL Structured Query Langage => REQUEST / Query => DEMANDE 
-- nous n'avons pas manipuler le fichier demo.db 


-- créer une table 
-- qui s'appelle deuxieme
-- deux colonnes 
-- prenom stocker du texte maximum 30 lettres 
-- nom stocker du texte maximum de 50 lettres 

CREATE TABLE deuxieme (
    prenom VARCHAR(30) ,
    nom VARCHAR(50)
);