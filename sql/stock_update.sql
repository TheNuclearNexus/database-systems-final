CREATE TRIGGER IF NOT EXISTS reduce_stock_after_order
AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
    UPDATE Products
    SET unitsInStock = unitsInStock - NEW.quantity
    WHERE product_id = NEW.product_id;
END;