-- Création de la table Utilisateur
CREATE TABLE Utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    email VARCHAR(100),
    role VARCHAR(20)
);

-- Création de la table Projet
CREATE TABLE Projet (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    date_debut DATE,
    date_fin DATE,
    statut VARCHAR(20)
);

-- Création de la table Tache
CREATE TABLE Tache (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100),
    description TEXT,
    deadline DATE,
    statut VARCHAR(20),
    id_projet INT,
    FOREIGN KEY (id_projet) REFERENCES Projet(id_projet)
);

-- Création de la table Ressource
CREATE TABLE Ressource (
    id_ressource INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50),
    lien TEXT,
    description TEXT,
    id_tache INT,
    FOREIGN KEY (id_tache) REFERENCES Tache(id_tache)
);

-- Création de la table Assigne
CREATE TABLE Assigne (
    id_utilisateur INT,
    id_tache INT,
    PRIMARY KEY (id_utilisateur, id_tache),
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
    FOREIGN KEY (id_tache) REFERENCES Tache(id_tache)
);