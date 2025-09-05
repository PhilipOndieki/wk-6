
-- Question 1
-- Query to retrieve employee details along with their office information
-- Uses INNER JOIN to combine employees and offices tables on officeCode

SELECT 
    employees.firstName,
    employees.lastName, 
    employees.email,
    employees.officeCode
FROM employees 
INNER JOIN offices ON employees.officeCode = offices.officeCode;
-- Question two
-- Query to retrieve product details along with product line information
-- Uses LEFT JOIN to include all products, even those without matching product lines
SELECT 
    products.productName,
    products.productVendor,
    products.productLine
FROM products
LEFT JOIN productlines ON products.productLine = productlines.productLine;

-- Question Three
SELECT 
    orders.orderDate,
    orders.shippedDate, 
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber
LIMIT 10;