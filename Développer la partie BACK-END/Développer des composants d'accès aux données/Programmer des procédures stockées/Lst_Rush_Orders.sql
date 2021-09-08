DELIMITER |

DROP PROCEDURE IF EXISTS Lst_Rush_Orders;

CREATE PROCEDURE Lst_Rush_Orders()
										
BEGIN 
	SELECT ord_id, ord_order_date, ord_payment_date, ord_ship_date, ord_reception_date, ord_status, ord_cus_id
	FROM orders
	WHERE ord_status LIKE '%commande urgente%';
END |

DELIMITER ;

CALL Lst_Rush_Orders();