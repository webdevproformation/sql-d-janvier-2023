créer une requête qui permet de créer la table articles dans la base de données blog.db 


Dans cette table article, il y a 7 colonnes 

clé primaire id 
titre texte maximum de 200 lettres 
contenu texte de 65 milles lettres au maximum 
like chiffre entier maximum 4 milliards
auteur texte strictement 4 lettres 
dt_publication AAAA MM JJ 
etat publié / brouillon par défaut brouillon 

Insérer les informations suivantes :

"article 1"      "lorem ipsum"      10 Pierre aujourd'hui publié
"découvrir js"   "lorem ipsum sed"   2 Pierre 01/01/2023  publié
"le DOM et js"   "lorem sed ipsum" 200 Julie  01/02/2023  brouillon
"article 4"      "lorem ipsum "     15 Alain  aujourd'hui brouillon

DROP TABLE IF EXISTS articles ;
CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    titre VARCHAR(200),
    contenu TEXT ,
    `like`  INT ,
    auteur CHAR(4) ,
    dt_publication DATE ,
    etat BOOLEAN DEFAULT FALSE
);

INSERT INTO articles
(titre , contenu , `like` , auteur , dt_publication , etat)
VALUES 
("article 1" , "lorem ipsum", 10 ,  "Pierre" , CURRENT_DATE ,  TRUE),
("découvrir js" , "lorem ipsum sed", 2 ,  "Pierre" , "2023-01-01" ,  TRUE),
("le DOM et js" , "lorem sed ipsum", 200 ,  "Julie" , "2023-02-01" ,  FALSE),
("article 4" , "lorem ipsum", 15 ,  "Alain" , CURRENT_DATE ,  FALSE);

-- READ => SELECT 
-- requete qui très riche => nombreux mots clés utilisables 

SELECT 10 * 30 ;

SELECT col , col , col FROM nom_table ;

-- pour toutes les lignes de ma table 
-- titre / contenu / like 

SELECT titre , contenu , `like` FROM articles ; 

-- attention les colonnes id ,auteur ... ne sont pas affichés dans cette requête 
-- elles ne sont pas SUPPRIMEE de la table article 

-- je peux choisir l'ordre des colonnes grâce à SELECT 

SELECT auteur , titre , `like` FROM articles ;

-- sélection toutes lignes et toutes les colonnes de la table articles dans l'ordre schéma de la table 

SELECT * FROM articles ;

SELECT titre , `like` , etat FROM articles ;

-- si je veux renommer les colonnes dans le resultat de mon extraction de données => AS 

SELECT titre AS `titre de l'article`, 
       `like` AS `nombre de like` , 
       etat AS `état de publication`  
FROM articles ;


-- pour la colonne etat 
-- si la valeur stokée FALSE => brouillon
-- si la valeur stokée TRUE  => publié

SELECT titre AS `titre de l'article`, 
       `like` AS `nombre de like` , 
       (CASE etat WHEN TRUE THEN "publié" ELSE "brouillon" END) AS `état de publication`
FROM articles ;

-- dans une requête SELECT il est possible filtrer le nombre de résultat => WHERE 
-- déjà vu sur UPDATE et DELETE 

-- afficher tous les articles qui ont moins de 15 likes
-- titre , contenu et l'auteur , like 

SELECT titre , contenu , auteur, `like`
FROM articles 
WHERE `like` <= 16 ; 

SELECT * FROM articles ;

SELECT titre , contenu , auteur, `like`
FROM articles 
WHERE `like` <= 16 ; 

-- récupérer tous les articles écrits par Pierre 
-- titre id dt_publication 

SELECT titre, id , dt_publication AS `date publication`
FROM articles 
WHERE auteur = "Pierre" ;

-- résultat  null
SELECT titre, id , dt_publication AS `date publication`
FROM articles 
WHERE auteur = "pierre" ;

SELECT titre, id , dt_publication AS `date publication`
FROM articles 
WHERE auteur LIKE "pierre" ;
-- LIKE est mot clé qui remplace le = dans clause WHERE 

-- rechercher tous les articles dont le contenu contient le mot sed 

SELECT * FROM articles ;

SELECT titre , contenu 
FROM articles 
WHERE contenu = "sed" ;


-- LIKE "%texte recherché%" => contient 
SELECT titre , contenu 
FROM articles 
WHERE contenu LIKE "%sed%" ;

-- requete 1
-- récupérer tous les articles publiés
-- affiché uniquement contenu, id , titre 
-- renommer le titre en "titre publication"

SELECT contenu, id , titre AS `titre publication`
FROM articles 
WHERE etat = TRUE ;

-- requete 2
-- récupérer tous les articles dont le titre contient le mot js 
-- afficher le titre, auteur , dt_publication , état 
-- 0 pour état => brouillon
-- 1 pour état => publié 
-- renommer la colonne dt_publication => 
SELECT titre AS `toto` , 
       auteur AS `tutu`, 
       dt_publication AS `date publication `, 
       (CASE etat WHEN TRUE THEN "publie" ELSE "brouillon" END) AS `état publication`
FROM articles 
WHERE titre LIKE "%js%" ;

-- 

SELECT titre, dt_publication 
FROM articles ;

-- récupérer pour tous les articles 
-- titre et dt_publication
-- les dates au format français JJ/MM/AAAA

-- sqlite 
-- https://sqlite.org/lang_datefunc.html => strftime()

SELECT titre, strftime("%d/%m/%Y", dt_publication ) AS `date publication en français` 
FROM articles ;

-- mysql mariadb 
-- date_format => https://www.w3schools.com/sql/func_mysql_date_format.asp

-- exo 
-- afficher tous articles publiés par Pierre
-- afficher titre , contenu , like , dt_publication , etat
-- les valeurs de la date de publication afficher uniquement MM/AAAA
-- etat TRUE => finalisé FALSE => encours
-- renommer le titre "titre de l'article"
-- renommer le like  "succes"


SELECT titre AS `titre de l'article`, 
       contenu , 
       `like` AS `succès`, 
       strftime("%m/%Y" , dt_publication) AS `date publication` , 
       (CASE etat WHEN TRUE THEN "finalisé" ELSE "encours" END) AS `état`
FROM articles 
WHERE auteur = "Pierre"

-- if(condition) {   }
/* const a = 10 ;
if(a == 20) 
{ 
}
elseif(a == 2){
} 
else { 
}

switch(a){
    case 10 :
    case 2 :
    default :
} */

if(etat == true){
    return "finalisé"
}else {
    return "encours" 
}

