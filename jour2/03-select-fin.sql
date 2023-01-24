-- SELECT col, col
-- FROM nom_table
-- WHERE col = > < <= >= != LIKE "valeur"

-- opérateur que l'on utilise dans la clause WHERE => IN 


-- je veux récupérer tous les articles écrits par Pierre et Julie 

SELECT * 
FROM articles 
WHERE auteur = "Pierre" OR auteur = "Julie" ;

SELECT * 
FROM articles 
WHERE auteur IN ( "Pierre" ,"Julie" ) ;

-- changer l'ordre d'affichage like plus élévé => like le mois élevé
-- 

-- par défaut croissant petit => grand ASC
SELECT * 
FROM articles 
ORDER BY `like` ;

-- décroissante => grand => petit DESC  
SELECT * 
FROM articles 
ORDER BY `like` DESC;

SELECT * 
FROM articles 
ORDER BY `dt_publication` ASC , like DESC ; -- 

SELECT * 
FROM articles 
ORDER BY `titre` DESC;

-- récupérer tous les articles dont le nombre de like comprise entre 10 et 30 

SELECT * 
FROM articles 
WHERE `like` >= 0 AND `like` <= 30 ;

SELECT * 
FROM articles 
WHERE `like` BETWEEN 0 AND 30 ;

-- requete 1
-- afficher tous les articles qui ont été publiés en janvier 2023 

SELECT * 
FROM articles 
WHERE dt_publication BETWEEN "2023-01-01" AND "2023-01-31";

SELECT * 
FROM articles 
WHERE dt_publication >= "2023-01-01" AND dt_publication <= "2023-01-31";

SELECT * 
FROM articles 
WHERE strftime("%m" , dt_publication) = "01" AND strftime("%Y" , dt_publication) = "2023"

SELECT * 
FROM articles 
WHERE dt_publication LIKE "%2023-01%" ;

-- requete 2
-- afficher tous les articles dont l'auteur est soit Pierre soit Alain
-- afficher les colonnes titre , id , dt_publication
-- pour la colonne date de publication mettre la date au format anglais 
-- MM/JJ/AAAA
-- tirer dans l'ordre alphabétique a => z sur la colonne titre 

SELECT titre , 
       id , 
       strftime("%m/%d/%Y" , dt_publication ) AS `date au format anglais`
FROM articles
WHERE auteur IN ("Pierre" , "Alain") 
ORDER BY titre ;

-- https://sqlite.org/lang_select.html