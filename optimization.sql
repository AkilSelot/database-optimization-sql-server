-- Index on CustomerID for faster joins
CREATE INDEX idx_customer ON Orders(CustomerID);

-- Multi-column index for Date + Customer searches
CREATE INDEX idx_orderdate_customer 
ON Orders(OrderDate, CustomerID);

-- Index on ProductID for best-selling products queries
CREATE INDEX idx_product ON Order_Items(ProductID);

-- Optional: Composite index for Data Lake simulation queries
CREATE INDEX idx_customer_orderdate_total 
ON Orders(CustomerID, OrderDate, TotalAmount);
