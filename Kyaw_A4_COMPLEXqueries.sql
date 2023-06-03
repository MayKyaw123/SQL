/*
QUESTION 1
*/

USE iSchool;
SELECT CONCAT(lname, ", ",fname) AS 'student_name', COUNT(*) AS 'enrollments',
SUM(credits) AS 'credit_count',
TIME_FORMAT(MAX(end_time), '%r') AS latest_end
FROM course_sections

  JOIN courses
      USING(course_id)
  JOIN enrollments
      USING(section_id)
  JOIN people
     USING(person_id)
WHERE year = '2021'
GROUP BY student_name WITH ROLLUP
HAVING enrollments > 2;

/*
QUESTION 2
I chose to utilize a subquery because I’m more confident operating with them rather
than CTEs.
When I initially began to use subqueries, it was quite useful to consider how the
subquery
itself informs the major query. I enjoy operating with a subquery for this question
because
I could break each part down into more diminutive, manageable steps.
*/

USE iSchool;
SELECT CONCAT(course_code, course_number) AS 'course', course_description,
COUNT(*) AS 'section_count', enrollment_count
FROM courses
  JOIN course_sections USING(course_id)
LEFT JOIN (
    SELECT course_id, COUNT(*) AS 'enrollment_count'
    FROM enrollments
    JOIN people USING(person_id)
  JOIN course_sections USING(section_id)
  JOIN courses USING(course_id)
GROUP BY course_id
)
AS new_table USING(course_id)
GROUP BY course_id
HAVING enrollment_count >=5
ORDER BY enrollment_count DESC, course;
