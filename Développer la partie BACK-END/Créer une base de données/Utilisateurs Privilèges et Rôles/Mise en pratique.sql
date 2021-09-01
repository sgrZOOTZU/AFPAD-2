--

CREATE USER 'util1'@'%' IDENTIFIED BY 'util1'; 
CREATE USER 'util2'@'%' IDENTIFIED BY 'util2';
CREATE USER 'util3'@'%' IDENTIFIED BY 'util3';

--

GRANT ALL PRIVILEGES ON gemscom_afpa TO 'util1'@'%' IDENTIFIED BY '';

	GRANT SELECT
	ON gemscom_afpa
	TO util2
	IDENTIFIED BY 'util2';

    		GRANT 
		ON gemscom_afpa.suppliers
		TO util3
		IDENTIFIED BY 'util3';
--