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