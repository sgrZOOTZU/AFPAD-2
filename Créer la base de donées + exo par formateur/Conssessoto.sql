DROP DATABASE IF EXISTS Oto;

CREATE DATABASE Oto;

USE Oto;

CREATE TABLE commercials (
	com_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	com_name VARCHAR(30) NOT NULL, 
	com_first_name VARCHAR(30) NOT NULL, 
	com_email VARCHAR(50) NOT NULL, 
	com_phone VARCHAR(10) NOT NULL, 
	com_type BOOLEAN NOT NULL
);

CREATE TABLE clients (
	cli_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cli_name VARCHAR(30) NOT NULL, 
	cli_first_name VARCHAR(30) NOT NULL,
	cli_gender BOOLEAN NOT NULL, 
	cli_adress VARCHAR(50) NOT NULL, 
	cli_city VARCHAR(50) NOT NULL, 
	cli_zipcode VARCHAR(5) NOT NULL, 
	cli_email VARCHAR(50) NOT NULL, 
	cli_phone VARCHAR(10) NOT NULL, 
	cli_type BOOLEAN NOT NULL, 
	com_id INT,
	FOREIGN KEY (com_id) REFERENCES commercials(com_id)
);

CREATE TABLE cars (
	car_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	car_name VARCHAR(30) NOT NULL, 
	car_brand VARCHAR(30) NOT NULL, 
	car_type INT NOT NULL, 
	car_type_of_fuel VARCHAR(30) NOT NULL, 
	car_kilometrage INT CHECK (car_kilometrage BETWEEN 0 AND 1000000), 
	car_color INT NOT NULL, 
	car_gearboxes VARCHAR(30) NOT NULL, 
	car_condition BOOLEAN NOT NULL, 
	car_util_part BOOLEAN NOT NULL, 
	car_registrations VARCHAR(30) NOT NULL, 
	car_date DATETIME NOT NULL, 
	com_id INT,
	FOREIGN KEY (com_id) REFERENCES commercials(com_id)
);

CREATE TABLE garages (
	gar_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	gar_name VARCHAR(30) NOT NULL, 
	gar_adress VARCHAR(50) NOT NULL, 
	gar_city VARCHAR(50) NOT NULL, 
	gar_zipcode VARCHAR(5) NOT NULL, 
	gar_email VARCHAR(50) NOT NULL, 
	gar_site VARCHAR(50) NOT NULL, 
	gar_phone VARCHAR(10) NOT NULL, 
	gar_sell VARCHAR(50), 
	gar_install VARCHAR(50), 
	car_id INT,
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

CREATE TABLE orders (
	ord_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ord_name VARCHAR(50) NOT NULL, 
	ord_details TEXT NOT NULL, 
	ord_adress VARCHAR(50) NOT NULL, 
	ord_payment BOOLEAN NOT NULL, 
	ord_date DATETIME NOT NULL, 
	cli_id INT,
	FOREIGN KEY (cli_id) REFERENCES clients(cli_id),
	gar_id INT,
	FOREIGN KEY (gar_id) REFERENCES garages(gar_id)
);

CREATE INDEX ind_commercials ON commercials (com_id);

CREATE INDEX ind_clients ON clients (cli_id);

CREATE INDEX ind_cars ON cars (car_id);

CREATE INDEX ind_garages ON garages (gar_id);

CREATE INDEX ind_orders ON orders (ord_id);