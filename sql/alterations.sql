-- Standard Primary Keys
ALTER TABLE Customers ADD PRIMARY KEY (customerID);
ALTER TABLE Employees ADD PRIMARY KEY (employeeID);
ALTER TABLE Suppliers ADD PRIMARY KEY (supplierID);
ALTER TABLE Categories ADD PRIMARY KEY (categoryID);
ALTER TABLE Products  ADD PRIMARY KEY (productID);
ALTER TABLE Orders    ADD PRIMARY KEY (orderID);

-- Composite Primary Key for the Junction Table
-- This ensures a specific product can only appear once per specific order
ALTER TABLE OrderDetails ADD PRIMARY KEY (orderID, productID);

-- Links for Products
ALTER TABLE Products
ADD CONSTRAINT fk_products_suppliers
FOREIGN KEY (supplierID) REFERENCES Suppliers(supplierID);

ALTER TABLE Products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (categoryID) REFERENCES Categories(categoryID);

-- Links for Orders
ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customerID) REFERENCES Customers(customerID);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_employees
FOREIGN KEY (employeeID) REFERENCES Employees(employeeID);

-- Links for OrderDetails
ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_orders
FOREIGN KEY (orderID) REFERENCES Orders(orderID);

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_orderdetails_products
FOREIGN KEY (productID) REFERENCES Products(productID);

-- Make sure orderID auto increments
ALTER TABLE Orders MODIFY orderID INT AUTO_INCREMENT;