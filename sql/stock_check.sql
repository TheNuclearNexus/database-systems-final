
-- check if unitsInStock is bigger than reorderLevel if not, add to table + don't add when product is discontinued
CREATE TABLE Reorder_list AS
SELECT productID
FROM Products
WHERE 
    unitsInStock < reorderLevel
    AND 
    discontinued = 0;