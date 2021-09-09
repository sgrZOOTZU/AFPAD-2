--
-- Stucture de la table `commander_articles`
--

DROP TABLE IF EXISTS commander_articles;
CREATE TABLE IF NOT EXISTS commander_articles(
	com_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	com_id_codart INT(10) NOT NULL,
	com_qte INT NOT NULL,
	com_date DATE DEFAULT NULL
);