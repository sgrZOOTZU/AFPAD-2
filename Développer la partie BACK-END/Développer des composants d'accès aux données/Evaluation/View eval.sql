DROP VIEW IF EXISTS v_catalogue_products;
/*-- VIEW CATALOGUE - PRODUITS --*/
CREATE VIEW v_catalogue_produits
AS
SELECT DISTINCT cat_id, cat_name, pro_id, pro_ref, pro_name 
FROM categories, products
WHERE pro_cat_id = cat_id