
-- check if unitsInStock is bigger than reorderLevel if not, add to table + don't add when product is discontinued
select productID
FROM companyDataTable
WHERE 
    unitsInStock < reorderLevel
    AND 
    discontinued = 0;