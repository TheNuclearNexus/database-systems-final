

-- Create Customers Table
CREATE TABLE IF NOT EXISTS Customers AS
SELECT DISTINCT
    customerID,
    companyName,
    contactName,
    contactTitle
FROM companyDataTable;

-- Create Employees Table
CREATE TABLE IF NOT EXISTS Employees AS
SELECT DISTINCT
    employeeID,
    employees_lastName AS lastName,
    employees_firstName AS firstName,
    employees_title AS title
FROM companyDataTable;

-- Create Suppliers Table
CREATE TABLE IF NOT EXISTS Suppliers AS
SELECT DISTINCT
    supplierID,
    suppliers_companyName AS companyName,
    suppliers_contactName AS contactName,
    suppliers_contactTitle AS contactTitle
FROM companyDataTable;

-- Create Categories Table
CREATE TABLE IF NOT EXISTS Categories AS
SELECT DISTINCT
    categoryID,
    categoryName
FROM companyDataTable;

-- Create Products Table
CREATE TABLE IF NOT EXISTS Products AS
SELECT DISTINCT
    productID,
    productName,
    supplierID,
    categoryID,
    quantityPerUnit,
    unitPrice_1 AS unitPrice,
    unitsInStock,
    unitsOnOrder,
    reorderLevel,
    discontinued
FROM companyDataTable;

-- Create Orders Table
CREATE TABLE IF NOT EXISTS Orders AS
SELECT DISTINCT
    orderID,
    customerID,
    employeeID,
    orderDate,
    requiredDate,
    shippedDate,
    shipVia,
    Freight
FROM companyDataTable;

-- Create OrderDetails Table
CREATE TABLE IF NOT EXISTS OrderDetails AS
SELECT
    orderID,
    productID,
    unitPrice,
    quantity,
    discount
FROM companyDataTable;