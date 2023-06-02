/* Q2 */
USE ap;

SELECT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors
WHERE vendor_id IN
   (SELECT vendor_id
      FROM ap.invoices JOIN ap.invoice_line_items         
      USING (invoice_id)     
WHERE line_item_amount <100 )
ORDER BY vendor_contact_first_name;

*Join outside subquery*

SELECT DISTINCT vendor_name, vendor_contact_first_name, vendor_state
FROM vendors JOIN invoices USING (vendor_id)
WHERE invoice_id IN 
     (SELECT invoice_id
     FROM ap.invoice_line_items
     WHERE line_item_amount <100 )
ORDER BY vendor_contact_first_name;

/* Q3 */

USE ap;

WITH vendor_list AS
    (SELECT DISTINCT vendor_id 
        FROM invoice_line_items 
            JOIN invoices USING(invoice_id) 
        WHERE line_item_amount < 100)
SELECT vendor_name, vendor_contact_first_name, vendor_state 
    FROM vendors JOIN vendor_list
        USING(vendor_id)
ORDER BY vendor_contact_first_name;

/* Q4 */

USE ap;

SELECT vendor_name AS 'Vendor Name', invoice_number AS 'Invoice Number',    
CAST(invoice_date AS DATETIME) AS 'Invoice Date/Time',     
CONCAT('$', FORMAT(invoice_total, 2)) AS 'Invoice Amount'
FROM invoices i JOIN vendors v USING (vendor_id)
--  ON i.vendor_id = v.vendor_id
WHERE invoice_date =  (SELECT Max(invoice_date)   
FROM invoices 
WHERE vendor_id = i.vendor_id) 
AND invoice_total <100
ORDER BY invoice_total;
