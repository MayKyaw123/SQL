/* Question 1 */

USE ischool;
DROP VIEW IF EXISTS staff_addresses;

CREATE VIEW staff_addresses AS
SELECT CONCAT(lname, ', ', fname) AS 'person', department, street,
    CONCAT(city, ', ', state) AS 'location', classification
  FROM people
    JOIN person_addresses USING (person_id)
    JOIN addresses USING (address_id)
    JOIN person_classifications USING (person_id)
    JOIN classification USING (classification_id)
WHERE classification = 'Student' AND CONCAT(street, ' ', city, ', ', state) IS NOT NULL
ORDER BY department, person;

SELECT *
FROM staff_addresses;
