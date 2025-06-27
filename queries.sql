-- Find the total Revenue Generated
SELECT sum(Quantity * Price) AS TotalRevenue
FROM Orders O
JOIN Products P 
ON O.Product_ID = P.Product_ID;

-- To find the Best-Selling Product
SELECT 
    Product_Name, 
    SUM(Quantity) AS Total_Sold
FROM Orders O
JOIN Products P 
ON O.Product_ID = P.Product_ID
GROUP BY Product_Name
ORDER BY Total_Sold DESC
LIMIT 1;

-- Find the Top Customer by Total Spending
SELECT 
    Customer_Name, 
    SUM(Quantity * Price) AS Total_Spent
FROM Orders
JOIN Products ON Orders.Product_ID = Products.Product_ID
JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 1;


-- Calculates total revenue for each month
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Quantity * Price) AS Monthly_Sales
FROM Orders O
JOIN Products P ON O.Product_ID = P.Product_ID
GROUP BY Month
ORDER BY Month;

-- Calculate total revenue per city
SELECT 
    City, 
    SUM(Quantity * Price) AS City_Sales
FROM Orders O
JOIN Customers C ON O.Customer_ID = C.Customer_ID
JOIN Products P ON O.Product_ID = P.Product_ID
GROUP BY City
ORDER BY City_Sales DESC;

-- Find Number of Orders Per Customer
SELECT 
    Customer_Name, 
    COUNT(Order_ID) AS Number_of_Orders
FROM Orders O
JOIN Customers C ON O.Customer_ID = C.Customer_ID
GROUP BY Customer_Name
ORDER BY Number_of_Orders DESC;