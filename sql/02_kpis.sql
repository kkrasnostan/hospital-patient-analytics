-- KPIs

-- Total admissions
SELECT COUNT(*) AS total_admissions
FROM hospital_patients;

-- Average length of stay
SELECT ROUND(AVG(length_of_stay_days), 2) AS avg_los_days
FROM hospital_patients;

-- Readmission rate (30 days)
SELECT
  ROUND(100.0 * SUM(CASE WHEN readmitted_30_days = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmission_rate_pct
FROM hospital_patients;

-- Admissions by department
SELECT department, COUNT(*) AS admissions
FROM hospital_patients
GROUP BY department
ORDER BY admissions DESC;