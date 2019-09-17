SELECT AVG(total_duration)
FROM (
  SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
  ORDER BY total_duration
  ) AS total_duration;