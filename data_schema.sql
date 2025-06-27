CREATE TABLE customers(
             customer_ID INT PRIMARY KEY,
             Customer_Name VARCHAR(100),
             City VARCHAR(50));
             
 CREATE TABLE products(
              Product_ID INT PRIMARY KEY, 
              Product_Name VARCHAR(100),
              Price Decimal(10,2));
              
 CREATE TABLE orders(
               order_ID INT PRIMARY KEY,
               Customer_ID INT,
               Product_ID INT,
               Quantity INT,
               Order_Date DATE,     
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));