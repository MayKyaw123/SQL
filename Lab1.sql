/* Q2
Seven tables are in the ap database
*/
7 (with margin: 0)

/* Q3
Eight columns are in the ap database
*/
8 (with margin: 0)

/* Q4
What is the datatype?
*/
varchar(50)

/* Q5
SELECT customer_last_name, customer_irst_name 
FROM customer
WHERE customer_state = 'DC' */

SELECT customer_last_name, customer_first_name
FROM customers
WHERE customer_state = 'DC';

/* Q6
SELECT vendor_name, [add field name here], [add field name here], [add field name here]
FROM vendors
WHERE [add condition here]
ORDER BY vendor_city, [add field name here]
*/

SELECT vendor_name, vendor_address1, vendor_address2, vendor_city
FROM vendors
WHERE vendor_state = 'OH'
ORDER BY vendor_city, vendor_name;

/* Q7
SELECT invoice_number, payment_date, payment_total
FROM invoices
[add where clause using payment_date] */

SELECT invoice_number, payment_date, payment_total
FROM invoices
WHERE payment_date IS NULL;

/* Q8 */

SELECT DISTINCT artist
FROM items
ORDER BY artist DESC;

/* Q9 */

SELECT CONCAT(customer_last_name, ", ", customer_first_name) AS "Full Name"
FROM customers;

/* Q10 */

SELECT invoice_number, payment_date, invoice_due_date, credit_total
FROM invoices
WHERE credit_total > 0 AND payment_date > invoice_due_date;
