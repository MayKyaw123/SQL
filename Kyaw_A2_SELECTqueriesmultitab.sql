/*
QUESTION 1
*/

USE ischool;
SELECT CONCAT(course_code,' ',course_number) AS 'course_name', section_number,
CONCAT(fname,' ', lname) AS 'instructor',
course_description,course_prereq, credits
FROM courses
JOIN course_sections USING (course_id)
JOIN people ON course_sections.instructor_id = people.person_id
WHERE course_number < 300 AND course_prereq IS NOT NULL
UNION
SELECT CONCAT(course_code,' ',course_number) AS 'course_name', section_number,
CONCAT(fname, ' ', lname) AS 'instructor',
course_description, 'No Prereqs', credits
FROM courses
JOIN course_sections USING (course_id)
JOIN people ON course_sections.instructor_id = people.person_id
WHERE course_number < 300 AND course_prereq IS NULL
ORDER BY course_name, section_number;

/*
QUESTION 2
*/

USE ischool;
SELECT CONCAT(course_code, course_number) AS 'course' , CONCAT( semester, ' -
' ,year) AS 'semester',
section_number, CONCAT(fname, ' ', lname) AS 'enrolled_student', meeting_days
FROM courses
JOIN course_sections USING(course_id)
LEFT JOIN enrollments USING(section_id)
LEFT JOIN people USING(person_id)
WHERE course_number = '327'
ORDER BY section_number, enrolled_student;
