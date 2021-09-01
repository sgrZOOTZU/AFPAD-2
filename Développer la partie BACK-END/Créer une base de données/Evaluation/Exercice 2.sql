DROP DATABASE IF EXISTS gescomeval;                                     #Évite les bugs avant la création de la database.

CREATE DATABASE gescomeval;															#Création de la database 'Gemscomeval'.

USE gescomeval;                                                         #On "USE" pour rentré dans la database afin d'y travailler.



CREATE TABLE subcategories( 															#Création d'une table 'subcategories'.
   sub_id SMALLINT,                                                     #Smallint de 0 à 32.767. always +1 quand '#' s'enregistre.
   sub_name VARCHAR(20) NOT NULL,													#Taille de 20 caractère maximum FIXE.
   PRIMARY KEY(sub_id),																	#Cle primaire de 'sub_id'.
   UNIQUE(sub_name)                                                     #Un nom unique avec une Cle unique pour 'sub_name'.
);

CREATE TABLE categories(																#Création d'une table 'categories'.
   cat_id SMALLINT,																		#Smallint de 0 à 32.767. always +1 quand '#' s'enregistre.
   cat_name VARCHAR(20) NOT NULL,													#Taille de 20 caractère maximum FIXE.
   PRIMARY KEY(cat_id),																	#Cle primaire de 'cat_id'.
   UNIQUE(cat_name)																		#Un nom unique avec une Cle unique pour 'cat_name'.
);

CREATE TABLE suppliers(																	#Création d'une table 'suppliers'.
   sup_id INT,																				#ID. always +1 quand '#' s'enregistre.
   sup_name VARCHAR(30) NOT NULL,													#Taille de 30 caractère maximum FIXE.
   sup_representative VARCHAR(30) NOT NULL, 										#Taille de 30 caractère maximum FIXE.
   PRIMARY KEY(sup_id),																	#Cle primaire de 'sup_id'
   UNIQUE(sup_name)																		#Un nom unique avec une Cle unique pour 'sup_name'.
);

CREATE TABLE customers(																	#Création d'une table 'customers'.
   cus_id INT,																				#ID. always +1 quand '#' s'enregistre.
   cus_date_created DATETIME NOT NULL,												#Date de création.
   cus_date_updated DATETIME,															#Date de dernière actualisation du compte.
   cus_login VARCHAR(30) NOT NULL,													#Nom de compte avec un taille maximal de 30 caractère FIXE.
   cus_password VARCHAR(30) NOT NULL,												#Le mot de passe avec un taille maximal de 30 caractère FIXE.
   cus_firstname VARCHAR(30) NOT NULL,												#Prénom avec taille maximal de 30 caractère FIXE.
   cus_lastname VARCHAR(30) NOT NULL,												#Nom avec taille maximal de 30 caractère FIXE.
   cus_date_birth DATE NOT NULL,														#Date de naissance 0000-00-00 soit AAAA-MM-JJ.
   cus_email VARCHAR(255) NOT NULL,													#Email avec taille maximal de 255 caractère FIXE.
   cus_phone_number CHAR(10),                                           #Numero de téléphone avec taille de 10 caractère + 245 de vide.
   cus_address VARCHAR(255),                                            #Addresse du client avec taille maximal de 255 caractère FIXE
   cus_city VARCHAR(30),																#Ville avec taille maximal de 30 caractère FIXE
   cus_zipcode VARCHAR(5),																#Code postal avec taille maximal de 5 caractère FIXE. 
   cus_country VARCHAR(30),														   #Pays avec taille maximal de 30 caractère FIXE.
   PRIMARY KEY(cus_id),																	#Cle primaire de 'cus_id'.
   UNIQUE(cus_login),																	#Un nom unique avec une Cle unique pour 'cus_login'.
   UNIQUE(cus_email)																		#Un nom unique avec une Cle unique pour 'cus_email'.
);

CREATE TABLE orders(																		#Création de la table 'orders'.
   ord_id INT,																				########"
   order_vat DECIMAL(5,2) NOT NULL,													########
   ord_date_payment DATETIME NOT NULL,												#Date de paiement 0000-00-00 soit en AAAA-MM-JJ.
   ord_date_delivery DATETIME,														#Date de livraison prévu 0000-00-00 soit en AAAA-MM-JJ.
   cus_id INT NOT NULL,																	#Rappel de 'cus_id' pour cle secondaire.
   PRIMARY KEY(ord_id),																	#Cle primaire de 'ord_id'.
   FOREIGN KEY(cus_id) REFERENCES customers(cus_id)							#Cle secondaire de 'cus_id' qui a pour références 'customers (cus_id)'.
);

CREATE TABLE employees(																	#Création d'une table employés.
   emp_id INT,																				#ID. always +1 quand '#' s'enregistre.
   emp_firstname VARCHAR(30) NOT NULL,												#Prénom avec une taille maximal de 30 caractère FIXE.
   emp_lastname VARCHAR(30) NOT NULL,												#Nom avec une taille maximal de 30 caractère FIXE.
   emp_job VARCHAR(20) NOT NULL,														#Nom du poste occupé avec une taille maximal de 20 caractère FIXE.
   emp_store VARCHAR(30) NOT NULL,													#Magasin#Magasin#
   emp_service VARCHAR(20) NOT NULL,												#Type de service avec une taille maximal de 20 caractère FIXE.
   emp_gross_anual_salary DECIMAL(9,2) NOT NULL,								#Salaire Brut annuel avec 0000000,00 soit 9 caractère dont 2 après la virgule.
   emp_seniority SMALLINT NOT NULL,													#Smallint de 0 à 32.767. always +1 quand '#' s'enregistre.
   emp_gender VARCHAR(10) NOT NULL,													#Type 'Homme' ou 'Femme'
   emp_number_children BYTE NOT NULL,												#Nombre d'enfant de l'employé 
   emp_id_1 INT NOT NULL,																#ID. 
   PRIMARY KEY(emp_id),																	#Cle primaire de 'emp_id'.
   FOREIGN KEY(emp_id_1) REFERENCES employees(emp_id)							#Cle secondaire de 'emp_id_1' avec références 'employees(emp_id)'.
);

CREATE TABLE products(																	#Création d'une table 'products'.
   pro_id INT,																				#ID. always +1 quand '#' s'enregistre.
   pro_price INT NOT NULL,																#Prix définit.
   pro_reference VARCHAR(15) NOT NULL,												#Références avec une taille maximal de 15 caractère FIXE.
   pro_ean VARCHAR(30) NOT NULL,														#EAN.
   pro_stock INT NOT NULL,																#Produit en stock ou non.
   pro_alert_stock INT NOT NULL,														#Alert de stock.
   pro_color VARCHAR(10),																#Couleur du produit avec une taille maximal
   pro_label VARCHAR(20) NOT NULL,													#Etiquette avec du text.
   pro_description TEXT NOT NULL,													#Description avec du text.
   pro_date_created DATETIME NOT NULL,												#Date de création du prduit en date AAAA-MM-JJ.
   pro_date_updated DATETIME,															#Date d'actualisation du produit en date AAAA-MM-JJ.
   pro_picture TEXT NOT NULL,															#La photo en text
   pro_on_sale TEXT NOT NULL,															#La promo en text./sinon c'est du LOGICAL.
   cat_id SMALLINT NOT NULL,															#ID.
   sup_id INT NOT NULL,																	#ID.
   PRIMARY KEY(pro_id),																	#Cle primaire de 'pro_id'.
   UNIQUE(pro_reference),																#Nom unique 'pro_references'.
   UNIQUE(pro_ean),																		#Nom unique 'pro_ean'.
   FOREIGN KEY(cat_id) REFERENCES categories(cat_id),							#Cle secondaire de 'cat_id' avec références 'categories(cat_id)'.
   FOREIGN KEY(sup_id) REFERENCES suppliers(sup_id)							#Cle secondaire de 'sup_id' avec références 'suppliers(sup_id)'.
);

CREATE TABLE have(																		#Création d'une table 'have' qui enfaite est une association.
   sub_id SMALLINT,																		#ID.
   cat_id SMALLINT,																		#ID.
   PRIMARY KEY(sub_id, cat_id),														#LES CLES DEJA UTILISE.
   FOREIGN KEY(sub_id) REFERENCES subcategories(sub_id),						#LES CLES DEJA UTILISE.
   FOREIGN KEY(cat_id) REFERENCES categories(cat_id)                    #LES CLES DEJA UTILISE.
);

CREATE TABLE contain(																	#Création d'une table 'contain' qui enfaite est une association.
   pro_id INT,																				#ID.
   ord_id INT,																				#ID.
   ord_pro_quantity SMALLINT NOT NULL,												#####.
   ord_pro_discount DECIMAL(5,2),													#####.
   PRIMARY KEY(pro_id, ord_id),														#LES CLES DEJA UTILISE.
   FOREIGN KEY(pro_id) REFERENCES products(pro_id),							#LES CLES DEJA UTILISE.
   FOREIGN KEY(ord_id) REFERENCES orders(ord_id)								#LES CLES DEJA UTILISE.
);

CREATE TABLE canbedepend( 																#Création d'une table 'canbedepend' qui enfaite est une association.
   sub_id SMALLINT,																		#ID.
   pro_id INT,																				#ID.
   PRIMARY KEY(sub_id, pro_id),														#LES CLES DEJA UTILISE.
   FOREIGN KEY(sub_id) REFERENCES subcategories(sub_id),						#LES CLES DEJA UTILISE.
   FOREIGN KEY(pro_id) REFERENCES products(pro_id)								#LES CLES DEJA UTILISE.
);
