INSERT INTO Suppliers (Name, ContactInfo) VALUES 
('Supplier A', '123-456-7890, emailA@example.com'),
('Supplier B', '987-654-3210, emailB@example.com'),
('Supplier C', '555-123-4567, emailC@example.com'),
('Supplier D', '333-444-5555, emailD@example.com'),
('Supplier E', '666-777-8888, emailE@example.com'),
('Supplier F', '111-222-3333, emailF@example.com'),
('Supplier G', '222-333-4444, emailG@example.com'),
('Supplier H', '444-555-6666, emailH@example.com'),
('Supplier I', '999-888-7777, emailI@example.com'),
('Supplier J', '101-202-3030, emailJ@example.com'),
('Supplier K', '202-303-4040, emailK@example.com'),
('Supplier L', '303-404-5050, emailL@example.com'),
('Supplier M', '404-505-6060, emailM@example.com'),
('Supplier N', '505-606-7070, emailN@example.com'),
('Supplier O', '606-707-8080, emailO@example.com');

INSERT INTO Products (Name, Description, Quantity, LastSoldDate, SupplierID) VALUES 
('Product 1', 'High-quality product 1', 50, '2024-11-25', 1),
('Product 2', 'High-quality product 2', 30, '2024-11-20', 2),
('Product 3', 'High-quality product 3', 70, '2024-11-18', 3),
('Product 4', 'High-quality product 4', 20, '2024-11-10', 4),
('Product 5', 'High-quality product 5', 100, '2024-11-05', 5),
('Product 6', 'High-quality product 6', 60, '2024-11-02', 6),
('Product 7', 'High-quality product 7', 80, '2024-10-30', 7),
('Product 8', 'High-quality product 8', 25, '2024-10-28', 8),
('Product 9', 'High-quality product 9', 90, '2024-10-25', 9),
('Product 10', 'High-quality product 10', 40, '2024-10-22', 10),
('Product 11', 'High-quality product 11', 15, '2024-10-20', 11),
('Product 12', 'High-quality product 12', 35, '2024-10-18', 12),
('Product 13', 'High-quality product 13', 45, '2024-10-15', 13),
('Product 14', 'High-quality product 14', 65, '2024-10-10', 14),
('Product 15', 'High-quality product 15', 75, '2024-10-05', 15);

INSERT INTO Orders (OrderDate, SupplierID, Status, TotalAmount) VALUES 
('2024-11-25', 1, 'Completed', 500.00),
('2024-11-20', 2, 'Pending', 300.00),
('2024-11-18', 3, 'Cancelled', 700.00),
('2024-11-15', 4, 'Completed', 200.00),
('2024-11-10', 5, 'Completed', 1000.00),
('2024-11-05', 6, 'Pending', 600.00),
('2024-11-02', 7, 'Completed', 800.00),
('2024-10-30', 8, 'Pending', 250.00),
('2024-10-28', 9, 'Completed', 900.00),
('2024-10-25', 10, 'Cancelled', 400.00),
('2024-10-22', 11, 'Completed', 150.00),
('2024-10-20', 12, 'Completed', 350.00),
('2024-10-18', 13, 'Pending', 450.00),
('2024-10-15', 14, 'Completed', 650.00),
('2024-10-10', 15, 'Completed', 750.00);


INSERT INTO OrderDetails (OrderID, ProductID, QuantityOrdered, PricePerUnit) VALUES 
(1, 1, 10, 50.00),
(2, 2, 5, 60.00),
(3, 3, 7, 70.00),
(4, 4, 3, 80.00),
(5, 5, 20, 50.00),
(6, 6, 12, 60.00),
(7, 7, 8, 70.00),
(8, 8, 4, 80.00),
(9, 9, 15, 50.00),
(10, 10, 6, 60.00),
(11, 11, 2, 70.00),
(12, 12, 3, 80.00),
(13, 13, 11, 50.00),
(14, 14, 13, 60.00),
(15, 15, 17, 70.00);


INSERT INTO StockMovements (ProductID, MovementDate, MovementType, QuantityChanged, OrderID) VALUES 
(1, '2024-11-25', 'Sale', -10, 1),
(2, '2024-11-20', 'Restock', 50, NULL),
(3, '2024-11-18', 'Sale', -5, 3),
(4, '2024-11-15', 'Restock', 30, NULL),
(5, '2024-11-10', 'Sale', -20, 5),
(6, '2024-11-05', 'Restock', 25, NULL),
(7, '2024-11-02', 'Sale', -8, 7),
(8, '2024-10-30', 'Sale', -4, 8),
(9, '2024-10-28', 'Restock', 40, NULL),
(10, '2024-10-25', 'Sale', -6, 10),
(11, '2024-10-22', 'Restock', 50, NULL),
(12, '2024-10-20', 'Sale', -3, 12),
(13, '2024-10-18', 'Restock', 15, NULL),
(14, '2024-10-15', 'Sale', -11, 14),
(15, '2024-10-10', 'Restock', 20, NULL);


INSERT INTO StockAlerts (ProductID, AlertType, AlertDate, Message) VALUES 
(1, 'Low Stock', '2024-11-25', 'Product 1 stock is low.'),
(2, 'Unsold', '2024-11-20', 'Product 2 has not been sold recently.'),   
(3, 'Low Stock', '2024-11-18', 'Product 3 stock is low.'),
(4, 'Unsold', '2024-11-15', 'Product 4 has not been sold recently.'),
(5, 'Low Stock', '2024-11-10', 'Product 5 stock is low.'),
(6, 'Unsold', '2024-11-05', 'Product 6 has not been sold recently.'),
(7, 'Low Stock', '2024-11-02', 'Product 7 stock is low.'),
(8, 'Unsold', '2024-10-30', 'Product 8 has not been sold recently.'),
(9, 'Low Stock', '2024-10-28', 'Product 9 stock is low.'),
(10, 'Unsold', '2024-10-25', 'Product 10 has not been sold recently.'),
(11, 'Low Stock', '2024-10-22', 'Product 11 stock is low.'),
(12, 'Unsold', '2024-10-20', 'Product 12 has not been sold recently.'),
(13, 'Low Stock', '2024-10-18', 'Product 13 stock is low.'),
(14, 'Unsold', '2024-10-15', 'Product
