-- Top 10 Customers by Total Spend
SELECT c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month
ORDER BY Month;

-- Best-Selling Products
SELECT p.ProductName, SUM(oi.Quantity) AS TotalSold
FROM Order_Items oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

-- Customers with Multiple Orders (Retention Analysis)
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1;
