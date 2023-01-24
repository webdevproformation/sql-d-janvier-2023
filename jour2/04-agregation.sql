-- Agrégation 

-- le fait de rassemble plusieurs lignes en une seule en fonction d'un ou de plusieurs critères 

SELECT * FROM articles ;

-- combien de ligne dans ma table ???? 

SELECT COUNT(*) FROM articles ;

SELECT COUNT(*) AS `nombre ligne table`
FROM articles ;

-- combien d'articles ont été écrit par Pierre ou Alain

SELECT auteur , COUNT(*) 
FROM articles 
WHERE auteur IN ("Pierre" , "Alain")
GROUP BY auteur ;

-- combien d'articles ont été écrit quelquesoit l'auteur

SELECT auteur , 
       COUNT(*) 
FROM articles 
GROUP BY auteur ;

- COUNT(colonne ou *)
- AVG(colonne) moyenne
- MIN()
- MAX()
- SUM()
- GROUP_CONCAT()

-- combien de like dispose chaque auteur ?? 
SELECT auteur ,
        SUM(`like`) AS `total like par auteur`
FROM articles 
GROUP BY auteur

-- afficher pour chaque auteur la liste des titres des articles rédigés 

SELECT auteur ,
        GROUP_CONCAT(titre) AS `liste des titres`
FROM articles 
GROUP BY auteur ;

-- afficher par mois la liste des articles publiés 

SELECT strftime("%m", dt_publication) AS `mois` ,
        GROUP_CONCAT(titre) AS `liste des articles publiés `
FROM articles
GROUP BY strftime("%m", dt_publication) ;


SELECT strftime("%m", dt_publication) AS `mois` ,
        GROUP_CONCAT(titre) AS `liste des articles publiés `
FROM articles
GROUP BY `mois` ;

-- 
-- afficher tous les auteurs qui ont plus de 15 likes cumulés 

SELECT auteur ,
        SUM(`like`)
FROM articles 
GROUP BY auteur
HAVING SUM(`like`) >= 15

-- afficher par etat 0 => brouillon 
-- afficher par etat 1 => publié 
-- pour chaque état afficher la liste des titres des articles 


SELECT (CASE etat WHEN TRUE THEN "publie" ELSE "brouillon" END ) AS `etat articles` ,
       GROUP_CONCAT(titre) AS `liste des articles publiés`
FROM articles 
GROUP BY `etat articles`