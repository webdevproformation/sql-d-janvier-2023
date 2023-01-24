CREATE TABLE demo (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    prix FLOAT DEFAULT 10 ,
    texte VARCHAR(20) ,
    etat BOOLEAN DEFAULT TRUE 
);

INSERT INTO demo 
(prix, texte , etat)
VALUES 
(30.02 , "premier echantillon" , FALSE),
(10 , "description technique" , TRUE),
(80.4 , "dernière ligne " , TRUE);

-- je veux modifier le prix pour le premier échantillon 
-- 30.02 MAIS 40.02 
-- quel le numéro de la clé primaire de ligne de je veux modifier ???

SELECT * FROM demo ;

-- changer la valeur stockée dans la colonne prix qui a l'id = 1 

UPDATE demo SET prix = 40.02 WHERE id = 1 ; 


-- changer l'etat de la dernière ligne TRUE à FALSE 

UPDATE demo SET etat = FALSE WHERE id = 3 ; 

-- pour la ligne ayant l'id = 2 
-- modifier le prix => 70
-- modifier le texte => "plus d'informations"

UPDATE demo SET prix = 70 , texte = "plus d'informations" WHERE id = 2 ; 


-- supprimer la première ligne

DELETE FROM demo ; -- Attention ne pas exécuté cette requête car elle vide tout le contenu de la table 
-- pas de Ctrl + Z copie de back up 
-- ne pas oublié le WHERE quand vous faites un DELETE 

DELETE FROM demo WHERE id = 1 ; 

SELECT * FROM demo ;

-- si je veux supprimer plusieurs lignes 

DELETE FROM demo WHERE id IN (1 , 2) ; 
DELETE FROM demo WHERE id <= 2 ; 


-- créer la requête qui permet de créer la table exo6 
-- contient 5 colonnes 
-- id clé primaire
-- nom texte maximum de 20 caractères
-- sexe homme / femme par défaut femme
-- dt_creation jj/mm/aaaa par défaut la date c'est aujourd'hui
-- age chiffre entier inférieur ou égal à 120 

-- ajouter deux lignes 
-- Alain homme aujourd'hui 32
-- Céline femme aujourd'hui 17

-- modifier l'age de Alain => 50
-- modifier le nom de Céline => Julie et modifié son age 15

-- supprimer le profil d'Alain 

-- https://github.com/webdevproformation


INSERT INTO exo6
(nom , sexe , age )
VALUES 
()