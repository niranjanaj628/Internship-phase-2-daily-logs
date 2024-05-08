-- Advanced SQL Mastery: Navigating Complex Operators and Their Strategic Use
-- Task 1.1: 
    --     Create a query to find product names that start with "Classic", include any characters in the middle, and end with "Car".
    SELECT productName FROM classicmodels.products where productName like 'Classic%car';
-- Task 1.2: 
    --     Identify all customer addresses that contain the word "Street" or "Avenue" in any part of the address field.
    SELECT * FROM classicmodels.customers WHERE addressLine1 LIKE '%Street%'  OR addressLine1 LIKE '%Avenue%' OR addressLine2 LIKE '%Street%'  OR addressLine2 LIKE '%Avenue%';
-- Task 2.1: 
    --     Find all orders with total amounts between two values, indicating mid-range transactions.
    SELECT orderNumber,productCode,quantityOrdered*priceEach as orders_between_1500_and_5000  FROM classicmodels.orderdetails where quantityOrdered*priceEach BETWEEN 1500 AND 5000;
-- Task 2.2: 
    --     Retrieve all payments made within a specific date range, focusing on a high-activity period.
    SELECT COUNT(checkNumber) as payments_in_the_year_2004 FROM classicmodels.payments where paymentDate BETWEEN '2004-01-01' AND '2004-12-31';
-- Task 3.1: 
    --     Identify orders where the total amount exceeds the average sale amount across all orders.
    SELECT orderNumber,quantityOrdered*priceEach as total_amount, AVG(quantityOrdered*priceEach) as avg_sales_amount FROM classicmodels.orderdetails  WHERE quantityOrdered*priceEach >avg_sales_amount ;
    -- Task 3.2: 
    --     Find products that have been ordered in quantities equal to the maximum quantity ordered for any product.
-- Task 4.1: 
    --     Identify customers who have made payments in the top 10% of all payments and are located in specific geographic regions.
-- Task 4.2: 
    --     Analyze sales data to identify products with significantly higher sales in specific seasons compared to their annual sales average.