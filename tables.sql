

CREATE TABLE IF NOT EXISTS customers (
    
)

CREATE TABLE IF NOT EXISTS orders (
  id PRIMARY KEY INT,
  customerID VARCHAR(10) FOREIGN KEY customers,
  employeeID INT,
  orderDate DATE,
)