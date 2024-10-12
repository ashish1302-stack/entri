CREATE DATABASE Sales;

USE Sales;  

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,  
    Customer_name VARCHAR(255) NOT NULL,  
    Product_Category VARCHAR(100) NOT NULL,
    Ordered_item VARCHAR(255) NOT NULL,
    Contact_No VARCHAR(15) NOT NULL, 
    CONSTRAINT UC_Orders UNIQUE (Customer_name, Contact_No)  
);

select*from orders;

ALTER TABLE Orders
ADD order_quantity INT NOT NULL;

ALTER TABLE Orders RENAME TO Sales_Orders;

INSERT INTO Sales_Orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) 
VALUES 
(1, 'Ajay C', 'Electronics', 'Laptop', '1234567890', 1),
(2, 'Sreeja Dillep', 'Clothing', 'T-Shirt', '0987654321', 3),
(3, 'Joby John', 'Grocery', 'Apples', '1122334455', 5),
(4, 'Ananya Pandey', 'Furniture', 'Chair', '2233445566', 2),
(5, 'Karthik Surya', 'Books', 'Novel', '3344556677', 1),
(6, 'Sneha S', 'Toys', 'Action Figure', '4455667788', 4),
(7, 'Arun Kuamr', 'Stationery', 'Notebook', '5566778899', 6),
(8, 'Divya pillai', 'Beauty', 'Lipstick', '6677889900', 2),
(9, 'Rahul Dravid', 'Footwear', 'Sneakers', '7788990011', 1),
(10, 'Pooja Hegde', 'Health', 'Vitamins', '8899001122', 7);

select*from sales_orders;

SELECT Customer_name, Ordered_item FROM Sales_Orders;

UPDATE Sales_Orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_Id = 1;

DROP TABLE Sales_Orders;


