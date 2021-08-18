DROP DATABASE IF EXISTS Exercice1;

CREATE DATABASE Exercice1;

USE Exercice1;

CREATE TABLE Personne (
	per_num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	per_name VARCHAR(30) NOT NULL,
	per_first_name VARCHAR(30) NOT NULL,
	per_adress VARCHAR(50) NOT NULL,
	per_city VARCHAR(50) NOT NULL
);

CREATE TABLE Groupe (
	gro_num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	gro_libelle VARCHAR(50) NOT NULL
);

CREATE TABLE Appartient (
	per_num INT NOT NULL,
	FOREIGN KEY (per_num) REFERENCES Personne(per_num),
	gro_num INT NOT NULL,
	FOREIGN KEY (gro_num) REFERENCES Groupe(gro_num)
);