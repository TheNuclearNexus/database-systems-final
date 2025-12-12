DELIMITER //
CREATE TRIGGER IF NOT EXISTS reduce_stock_after_order
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
    UPDATE Products
    SET unitsInStock = unitsInStock - NEW.quantity
    WHERE productId = NEW.productId;
END //
DELIMITER ;

CREATE OR REPLACE VIEW stock_after_order_view AS
SELECT productId, productName, unitsInStock
FROM Products;

SELECT *
FROM stock_after_order_view
INTO OUTFILE '/var/lib/mysql-files/dumps/stock_after_order.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';