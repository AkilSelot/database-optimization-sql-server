-- Insert Customers
INSERT INTO Customers (CustomerID, Name, Email, City, SignupDate)
VALUES 
(1, 'Alice Johnson', 'alice@example.com', 'Toronto', '2023-01-15'),
(2, 'Bob Smith', 'bob@example.com', 'Vancouver', '2023-02-10'),
(3, 'Carol Lee', 'carol@example.com', 'Montreal', '2023-03-05');
-- (Continue for 1,000 Customers for Big Data exposure)

-- Insert Products
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Headphones', 'Accessories', 150.00);
-- (Continue for 5,000 Products)

-- Insert Orders & Order_Items
-- Example small batch; scale up to 50,000 Orders & 200,000 Order_Items
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2023-03-01', 1350.00),
(2, 2, '2023-03-02', 950.00);

INSERT INTO Order_Items (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 3, 1, 150.00),
(3, 2, 2, 1, 800.00),
(4, 2, 3, 1, 150.00);
