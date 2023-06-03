/*
QUESTION 1
*/
DROP TABLE IF EXISTS people_copy;
DROP TABLE IF EXISTS enrollments_copy;

USE iSchool;
CREATE TABLE people_copy AS
SELECT *
FROM people;
INSERT people_copy (lname, fname, pronoun_id, email, college, department, title,
start_date)
  VALUES
    ('Smith', 'Ricky', 2, 'rsmith@umd.edu','College of Infromation
Studies','BSIS', DEFAULT, NOW());

CREATE TABLE enrollments_copy AS
SELECT *
FROM enrollments;

INSERT enrollments_copy (person_id, section_id)
VALUES (1324661258, 57), (1324661258, 15),(1324661258, 32);

/*
QUESTION 2
*/

USE iSchool;
UPDATE enrollments_copy
SET section_id = 172
WHERE person_id = 1324661258 AND section_id = 173;

SELECT
  CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name,
  CONCAT(courses.course_code, courses.course_number) AS course,
  course_sections.section_number,
  CONCAT(course_sections.semester, ' ', course_sections.year) AS semester_year
FROM people_copy
  JOIN enrollments_copy USING(person_id)
  JOIN course_sections USING(section_id)
  JOIN courses USING(course_id)
WHERE people_copy.person_id = 1324661258;

/*
QUESTION 3
*/

USE iSchool;
SELECT
  section_id, section_number,
  CONCAT(course_code, course_number) AS course,
  CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name
FROM people_copy
  JOIN enrollments_copy USING(person_id)
  JOIN course_sections USING(section_id)
  JOIN courses USING(course_id)
WHERE course_number = 327 AND course_id = 14;

SELECT *
FROM course_sections
WHERE course_id = 14;

DELETE FROM enrollments_copy
WHERE section_id IN (171,172,173,174,175,176,177,178);

SELECT
  section_id, section_number,
  CONCAT(course_code, course_number) AS course,
  CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name
FROM people_copy
  JOIN enrollments_copy USING(person_id)
  JOIN course_sections USING(section_id)
  JOIN courses USING(course_id)
WHERE course_number = 327 AND course_id = 14;
