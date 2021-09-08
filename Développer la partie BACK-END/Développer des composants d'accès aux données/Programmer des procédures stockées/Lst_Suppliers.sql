DELIMITER |

DROP PROCEDURE IF EXISTS Lst_Suppliers;

CREATE PROCEDURE Lst_Suppliers()


BEGIN
	SELECT sup_name 
	FROM suppliers
	WHERE EXISTS (SELECT pro_sup_id FROM products WHERE pro_sup_id = sup_id);
END |

DELIMITER ;

CALL Lst_Suppliers();