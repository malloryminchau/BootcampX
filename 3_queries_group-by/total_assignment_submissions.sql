SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM students JOIN cohorts ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort
ORDER BY total_submissions DESC;