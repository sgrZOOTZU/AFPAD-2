DELIMITER |

DROP PROCEDURE IF EXISTS CA_Supplier |

CREATE PROCEDURE CA_Supplier(

	p_sup_id VARCHAR(50),
	p_ord_order_date CHAR(4)
)

BEGIN

SELECT ROUND(SUM((ode_unit_price * ode_quantity) - ((ode_unit_price * ode_quantity) * (ode_discount/100))),2)  AS 'CA' FROM orders_details

JOIN products ON pro_id = ode_pro_id

JOIN suppliers ON sup_id = pro_sup_id

JOIN orders ON ord_id = ode_ord_id

WHERE sup_id = p_sup_id AND YEAR(ord_order_date) = p_ord_order_date;

END |

DELIMITER ;