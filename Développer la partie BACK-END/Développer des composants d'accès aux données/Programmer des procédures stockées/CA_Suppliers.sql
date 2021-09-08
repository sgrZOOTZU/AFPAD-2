DELIMITER |

DROP PROCEDURE IF EXISTS CA_Suppliers |

CREATE PROCEDURE CA_Suppliers(
	p_sup_id VARCHAR(50),
	p_ord_oerder_date CHAR(4)
)
	
BEGIN 
	SELECT ROUND(SUM((ode_unit_price * ode_quantity) - ((ode_unit_price * ode_quantity) * (ode_discount/100))),2) 
	FROM orders_details
	WHERE 
END |

DELIMITER ;