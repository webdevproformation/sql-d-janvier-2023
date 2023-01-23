
CREATE TABLE etudiants (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(50) ,
    age TINYINT DEFAULT 0 
) ;

-- Ajouter des lignes dans une table
-- Alain 22 ans
-- Céline 15 ans 
-- Zorro 


-- CREATE 
INSERT INTO etudiants 
( nom , age )    /* les colonnes */
VALUES
( "Alain" , 22  ) ;  /*  les valeurs à insérer */

-- READ 
SELECT * FROM etudiants ;

INSERT INTO etudiants
(nom , age )
VALUES 
("Céline", 15 ) ;

SELECT * FROM etudiants ;

INSERT INTO etudiants 
( nom )
VALUES 
("Zorro") ; -- si la colonne age n'est pas précisée dans la requête INSERT 
            -- alors ce sont les valeurs par DEFAULT qui vont être ajoutée 
            -- par le SGBD 

SELECT * FROM etudiants ;

DELETE FROM etudiants WHERE id = 4 ; 

-- insérer plusieurs lignes en meme temps 
-- Charles 20 
-- Ahmed 22
-- Jean Pierre 0 

INSERT INTO etudiants 
( nom , age )    
VALUES
( "Charles" , 20  ) ,
( "Ahmed" , 22  ) ,
( "Jean Pierre" , 0  ) ;

SELECT * FROM etudiants ;

-- créer une requête qui crée la table exo5
-- contient 4 colonnes 
-- id clé primaire
-- prix chiffre à virgule par défaut qui vaut 10
-- texte maximum de 20 lettres 
-- etat true / false par défaut TRUE

-- ajouter 3 lignes dans la table exo5 
--   30.02  "premier echantillon"  FALSE
--   10  "description technique"  TRUE
--   80.4  "dernière ligne "  TRUE

CREATE TABLE exo5 (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    prix FLOAT DEFAULT 10 ,
    texte VARCHAR(20) ,
    etat BOOLEAN DEFAULT TRUE 
);
INSERT INTO exo5
(prix, texte , etat)
VALUES 
(30.02 , "premier echantillon" , FALSE),
(10 , "description technique" , TRUE),
(80.4 , "dernière ligne " , TRUE);

SELECT * FROM exo5 ;
