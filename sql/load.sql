SET GLOBAL local_infile=1;

CREATE TABLE IF NOT EXISTS companyDataTable (
  orderID INT,
  customerID VARCHAR(10),
  employeeID INT,
  orderDate DATE,
  requiredDate DATE,
  shippedDate DATE,
  shipVia INT,
  Freight DECIMAL(10,2),
  productID INT,
  unitPrice DECIMAL(10,2),
  quantity INT,
  discount DECIMAL(4,2),
  companyName VARCHAR(100),
  contactName VARCHAR(100),
  contactTitle VARCHAR(100),
  employees_lastName VARCHAR(50),
  employees_firstName VARCHAR(50),
  employees_title VARCHAR(100),
  productName VARCHAR(100),
  supplierID INT,
  categoryID INT,
  quantityPerUnit VARCHAR(50),
  unitPrice_1 DECIMAL(10,2),
  unitsInStock INT,
  unitsOnOrder INT,
  reorderLevel INT,
  discontinued BOOLEAN,
  categoryName VARCHAR(100),
  suppliers_companyName VARCHAR(100),
  suppliers_contactName VARCHAR(100),
  suppliers_contactTitle VARCHAR(100)
);

SET sql_mode = 'STRICT_TRANS_TABLES';

-- mysql --local-infile=1 -uroot db < /var/lib/data/schema.sql
LOAD DATA LOCAL infile '/var/lib/mysql-files/CompanyData-clean.tsv'
INTO TABLE companyDataTable
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

