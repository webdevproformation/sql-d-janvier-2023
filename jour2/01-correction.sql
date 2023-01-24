CREATE TABLE exo6 (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(20) ,
    sexe BOOLEAN DEFAULT TRUE ,
    dt_creation DATE DEFAULT CURRENT_DATE ,
    age TINYINT 
);

-- ajouter deux lignes 
-- Alain homme aujourd'hui 32
-- Céline femme aujourd'hui 17

INSERT INTO exo6
(nom, sexe, age)
VALUES 
("Alain", FALSE , 32) ,
("Céline", TRUE , 17) ;

UPDATE exo6 SET age = 50 WHERE nom = "Alain" ; 
UPDATE exo6 SET nom = "Julie" , age = 15 WHERE nom = "Céline" ;

DELETE FROM exo6 WHERE nom = "Alain" ;

-- JIT 