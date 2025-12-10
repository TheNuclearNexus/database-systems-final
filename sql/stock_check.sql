
-- check if unitsInStock is bigger than reorderLevel if not, add to table + don't add when product is discontinued
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS GetProductsToRestock()
BEGIN
    SELECT productID, productName, unitsInStock, reorderLevel
    FROM Products
    WHERE 
        unitsInStock < reorderLevel
        AND 
        discontinued = 0;
END //

DELIMITER ;