INSERT INTO categories (cat_name) VALUES

('Warzazate'),
('PATRIMOINE'),
('Simpson');

--
--
INSERT INTO customers (cus_lastname, cus_firstname, cus_address, cus_zipcode, cus_city, cus_countries_id, cus_mail, cus_phone, cus_password, cus_add_date, cus_update_date) VALUES

('Alexandre', 'Dubosier', '4 Rue Galerie de la Fayette', '80000', 'Amiens', 'FR', 'alex.dubosier@gmail.com', '0707070707', '123456', '2015-08-19', '2021-08-11'),
('Alexandre', 'Astier', '5 Rue des potalas', '41246', 'Chatelet-les-Halles', 'FR', 'alexandre.a@gmail.com', '0808080808', '234567', '2015-09-11', '2020-02-17'),
('Arouf', 'Gangsta', '665 Rue des Partout même dans ton trou', '66514', 'Paris', 'FR', 'leplusbeauxdetoutlesrebeux@gmail.com', '0909090909', '345678', '2016-01-22', '2021-08-12');

--
--

INSERT INTO employes (emp_lastname, emp_firstname, emp_address, emp_zipcode, emp_city, emp_mail, emp_phone, emp_salary, emp_enter_date, emp_gender, emp_children) VALUES

('Maria', 'Dubois', '1 Rue du Foyer', '80000', 'Amiens', 'mariadb@sfr.fr', '0404040404', '1550', '2018-05-22', 'FEMALE', '1'),
('Michel', 'La Fontaine', '2 Rue de la Paix', '93015', 'Paris', 'Mimi.laf@outlook.net', '0505050505', '1300', 'MALE', '2'),
('Xavier', 'Spicher', '3 Rue de Potier', '80000', 'Amiens', 'xav.spi@gmail.com', '0606060606', '1450', 'MALE', '0');

--
--

INSERT INTO posts (pos_libelle) VALUES

('Mecanicien'),
('Garagiste'),
('Acceuil);

--
--

INSERT INTO orders (ord_order_date, ord_payment_date, ord_ship_date, ord_reception_date, ord_status) VALUES

('2021-08-12', '2021-08-12', '2021-08-13', '2021-08-20', 'En cours de livraison.'),
('2021-07-29', '2021-07-30', '2021-08-01', '2021-08-08', 'A été livré.'),
('2021-03-10', '2021-03-11', '2021-03-15', '2021-03-22', 'A été livré.');

--
--

INSERT INTO suppliers (sup_name, sup_city, sup_countries_id, sup_address, sup_zipcode, sup_contact, sup_phone, sup_mail) VALUES

--

('Renault', 'Rivery', 'FR', 'ZA La Borne', '2 Rue Paul Emile Victor', '80136', 'NULL', '0101010101', 'aaa.aaa@gmail.com'),
('Citroen', 'Paris', 'FR', '34 Rue de Montpensier', '75001', 'NULL', '0202020202', 'bbb.bbb@gmail.com'),
('Toyota', 'Lyon', 'FR', '16 Rue Paul Cézanne', '69330', 'NULL', '0303030303', 'ccc.ccc@gmail.com');

--