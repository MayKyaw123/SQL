/* Q2 
Creates a new table called customers_copy,
and populates it with all rows from 
the customers table.*/

CREATE TABLE customers_copy AS
SELECT * 
FROM customers;

/* Q3 */

CREATE TABLE orders_copy AS
SELECT *
FROM orders;

CREATE TABLE order_details_copy AS
SELECT *
FROM order_details;

/* Q4 */

SET SQL_SAFE_UPDATES=0;

SELECT *
FROM orders_copy
WHERE shipped_date IS NOT NULL;

DELETE FROM orders_copy
WHERE shipped_date IS NOT NULL;

SELECT *
FROM orders_copy;

/* Q5 */

SELECT *
FROM order_details_copy
WHERE order_id = 829 AND item_id = 5;

UPDATE order_details_copy
SET order_qty = order_qty + 2
WHERE order_id = 829 AND item_id = 5;

SELECT *
FROM order_details_copy
WHERE order_id = 829 AND item_id = 5;

/* Q6 */

INSERT INTO customers_copy
VALUES (26, 'Ruth', 'Bader Ginsburg', '1 First ST NE', 'Washington', 'DC', '20543', '2024793000', NULL);

SELECT *
FROM customers_copy;

/* Q7 */

SELECT order_id, COUNT(item_id) AS 'Item Count'
FROM order_details_copy
WHERE order_id = 829;
