-- Write query to get number of graded assignments for each student:
SELECT student_id, COUNT(*) AS graded_assignments
FROM assignments
GROUP BY student_id;