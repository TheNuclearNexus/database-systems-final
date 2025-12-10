

-- Create Customers Table
CREATE TABLE Customers AS
SELECT DISTINCT
    customerID,
    companyName,
    contactName,
    contactTitle
FROM companyDataTable;

-- Create Employees Table
CREATE TABLE Employees AS
SELECT DISTINCT
    employeeID,
    employees_lastName AS lastName,
    employees_firstName AS firstName,
    employees_title AS title
FROM companyDataTable;

-- Create Suppliers Table
CREATE TABLE Suppliers AS
SELECT DISTINCT
    supplierID,
    suppliers_companyName AS companyName,
    suppliers_contactName AS contactName,
    suppliers_contactTitle AS contactTitle
FROM companyDataTable;

-- Create Categories Table
CREATE TABLE Categories AS
SELECT DISTINCT
    categoryID,
    categoryName
FROM companyDataTable;

-- Create Products Table
CREATE TABLE Products AS
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
CREATE TABLE Orders AS
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
CREATE TABLE OrderDetails AS
SELECT
    orderID,
    productID,
    unitPrice,
    quantity,
    discount
FROM companyDataTable;