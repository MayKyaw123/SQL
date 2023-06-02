/*
QUESTION 1
*/

USE ischool;
SELECT street AS 'Street', CONCAT(city,',',state) AS 'City/State', zipcode AS
'Postal Code',
LEFT (main_phone, 3) AS 'Main Phone Area Code'
FROM addresses
WHERE state > 'MD' AND state < 'PA'
ORDER BY state, city, street;

/*
QUESTION 2
*/

USE ischool;
SELECT person_id AS UID, CONCAT(fname,' ' ,lname) AS name, start_date, department,
title
FROM people
WHERE title is not NULL
ORDER BY start_date DESC, department, name;
