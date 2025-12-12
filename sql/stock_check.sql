
-- check if unitsInStock is bigger than reorderLevel if not, add to table + don't add when product is discontinued
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS GetProductsToRestock()
BEGIN
    CREATE OR REPLACE VIEW restock_view AS
    SELECT productID, productName, unitsInStock, reorderLevel
    FROM Products
    WHERE 
        unitsInStock < reorderLevel
        AND 
        discontinued = 0;
END //

DELIMITER ;

CALL GetProductsToRestock();

SELECT *
FROM restock_view
INTO OUTFILE '/var/lib/mysql-files/dumps/restock_products.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';