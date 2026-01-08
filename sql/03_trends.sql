-- Monthly Admissions Trend

SELECT
  substr(admission_date, 1, 7) AS month,
  COUNT(*) AS admissions
FROM hospital_patients
GROUP BY month
ORDER BY month;