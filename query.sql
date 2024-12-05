--requete SELECT simple

SELECT Tache.id_tache, Tache.titre, Tache.description, Tache.deadline, Projet.nom AS nom_projet
FROM Tache
JOIN Projet ON Tache.id_projet = Projet.id_projet;

--requete avec group by

SELECT Projet.nom AS nom_projet, COUNT(Tache.id_tache) AS nombre_taches
FROM Projet
LEFT JOIN Tache ON Projet.id_projet = Tache.id_projet
GROUP BY Projet.nom;

--Requête avec deux JOIN

SELECT Utilisateur.nom AS utilisateur, Tache.titre AS tache, Ressource.type AS type_ressource, Ressource.lien
FROM Assigne
JOIN Utilisateur ON Assigne.id_utilisateur = Utilisateur.id_utilisateur
JOIN Tache ON Assigne.id_tache = Tache.id_tache
LEFT JOIN Ressource ON Tache.id_tache = Ressource.id_tache;