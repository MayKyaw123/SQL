/* Q2 */
SELECT vendor_name, vendor_state 
FROM vendors WHERE vendor_state = 'CA'
  UNION
SELECT vendor_name, 'Outside CA' 
FROM vendors 
WHERE vendor_state != 'CA'
ORDER BY vendor_name;

/* Q3 */
SELECT department_name, CONCAT(first_name, ' ', last_name) AS employee_name
FROM ex.departments dept
JOIN ex.employees emp
    ON dept.department_number = emp.department_number
ORDER BY department_name, last_name, first_name;

/* Q4 */
SELECT vendor_name, invoice_date, invoice_number,
     CONCAT ('# ', invoice_sequence) AS inv_sequence,
     line_item_amount AS li_amount 
FROM ap.vendors v 
JOIN ap.invoices i 
    ON v.vendor_id = i.vendor_id
JOIN ap.invoice_line_items l 
    ON i.invoice_id = l.invoice_id
WHERE vendor_name = 'Wells Fargo Bank'
ORDER BY invoice_date, invoice_number, inv_sequence;

/* Q5 */
SELECT d.department_number, department_name, employee_id
FROM departments d
    LEFT JOIN employees e
    ON d.department_number = e.department_number
WHERE e.employee_id IS NULL
ORDER BY d.department_number;

/* Q6 */
SELECT invoice_number, vendor_name, line_item_description, line_item_amount
FROM ap.vendors
    JOIN ap.invoices
        USING(vendor_id)
    JOIN ap.invoice_line_items line_items
       USING(invoice_id)
ORDER BY invoice_number;

