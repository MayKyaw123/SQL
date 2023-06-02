/* Q2 */

SELECT vendor_name,
COUNT(invoice_total) AS invoice_count,
CONCAT('$ ', FORMAT(SUM(invoice_total), 2)) AS invoice_total_sum,
CONCAT('$ ', FORMAT(SUM(invoice_total)/COUNT(invoice_total),2)) AS invoice_average
FROM vendors JOIN invoices USING(vendor_id)
GROUP BY vendor_id
ORDER BY invoice_count DESC;

/* Q3 */

SELECT DISTINCT vendor_name
FROM vendors 
WHERE vendor_id IN 
   (SELECT vendor_id FROM invoices) 
ORDER BY vendor_name;

/* Q4 */

SELECT invoice_number, invoice_total
FROM invoices
WHERE payment_total >
    (SELECT AVG(invoice_total)
     FROM invoices
    WHERE (invoice_total > 0))
ORDER BY invoice_total DESC;

/* Q5 */

WITH max_invoice AS
(
     SELECT vendor_id, MAX(invoice_total) AS invoice_max
     FROM invoices
     WHERE invoice_total - credit_total - payment_total > 0
     GROUP BY vendor_id
)
SELECT SUM(invoice_max) AS sum_of_maximums
FROM max_invoice;

