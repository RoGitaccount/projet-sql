-- Insertion dans la table Utilisateur
INSERT INTO Utilisateur (nom, email, role) VALUES
('Alice', 'alice@example.com', 'Manager'),
('Bob', 'bob@example.com', 'Développeur'),
('Charlie', 'charlie@example.com', 'Testeur');

-- Insertion dans la table Projet
INSERT INTO Projet (nom, date_debut, date_fin, statut) VALUES
('Projet A', '2024-01-01', '2024-06-30', 'En cours'),
('Projet B', '2024-07-01', '2024-12-31', 'Planifié');

-- Insertion dans la table Tache
INSERT INTO Tache (titre, description, deadline, statut, id_projet) VALUES
('Conception', 'Conception de la base de données', '2024-02-15', 'En cours', 1),
('Développement', 'Développement de l’interface utilisateur', '2024-04-15', 'Non commencé', 1),
('Tests', 'Tests unitaires et d’intégration', '2024-06-01', 'Non commencé', 1);

-- Insertion dans la table Ressource
INSERT INTO Ressource (type, lien, description, id_tache) VALUES
('Documentation', 'https://example.com/doc', 'Guide de conception', 1),
('Code Source', 'https://example.com/code', 'Référentiel de code', 2);

-- Insertion dans la table Assigne
INSERT INTO Assigne (id_utilisateur, id_tache) VALUES
(1, 1), -- Alice assignée à Conception
(2, 2), -- Bob assigné à Développement
(3, 3); -- Charlie assigné à Tests

