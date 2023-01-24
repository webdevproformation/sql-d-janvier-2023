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