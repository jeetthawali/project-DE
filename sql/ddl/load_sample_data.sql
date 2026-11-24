
INSERT INTO raw_orders
(source_row_id, order_id, customer_id, order_date,
 product_id, quantity, unit_price, order_status)
VALUES
(1, 'O1001', 'C101', '2026-11-20 10:00:00', 'P01', 2, 500.00, 'completed'),
(2, 'O1002', 'C102', '2026-11-20 11:15:00', 'P02', 1, 1200.00, 'completed'),
(3, 'O1003', 'C103', '2026-11-20 12:30:00', 'P03', 3, 200.00, 'cancelled'),
(4, 'O1004', 'C101', '2026-11-21 09:20:00', 'P01', 1, 500.00, 'completed'),
(5, 'O1005', 'C104', '2026-11-21 10:45:00', 'P04', 2, 150.00, 'completed'),
(6, 'O1006', 'C105', '2026-11-21 14:00:00', 'P02', 1, 1200.00, 'pending'),
(7, 'O1007', 'C999', '2026-11-21 15:30:00', 'P99', 2, 100.00, 'completed'),
(8, 'O1008', 'C102', '2026-11-22 08:15:00', 'P03', 0, 200.00, 'completed'),
(9, 'O1009', 'C103', '2026-11-22 09:10:00', 'P04', 2, -150.00, 'completed'),
(10, 'O1010', 'C104', NULL, 'P01', 1, 500.00, 'completed'),
(11, 'O1011', 'C101', '2026-11-22 11:00:00', 'P02', 1, 1200.00, 'COMPLETE'),
(12, 'O1001', 'C101', '2026-11-20 10:00:00', 'P01', 2, 500.00, 'completed');

INSERT INTO raw_products
(product_id, product_name, category)
VALUES
('P01', 'Laptop', 'Electronics'),
('P02', 'Smartphone', 'Electronics'),
('P03', 'Headphones', 'Accessories'),
('P04', 'Keyboard', 'Accessories');


INSERT INTO raw_payments
(payment_id, order_id, payment_method, payment_amount)
VALUES
('PAY001', 'O1001', 'UPI', 1000.00),
('PAY002', 'O1002', 'Credit Card', 1200.00),
('PAY003', 'O1003', 'UPI', 600.00),
('PAY004', 'O1004', 'UPI', 500.00),
('PAY005', 'O1005', 'Debit Card', 300.00),
('PAY006', 'O1006', 'Net Banking', 1200.00),
('PAY007', 'O1007', 'UPI', 200.00),
('PAY008', 'O1008', 'UPI', 0.00),
('PAY009', 'O1009', 'Credit Card', 300.00),
('PAY010', 'O1010', 'UPI', 500.00),
('PAY011', 'O1011', 'Credit Card', 1200.00),
('PAY012', 'O1005', 'UPI', 100.00);
