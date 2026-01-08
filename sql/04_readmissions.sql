-- Readmissions by department
SELECT
  department,
  COUNT(*) AS admissions,
  SUM(CASE WHEN readmitted_30_days = 'Yes' THEN 1 ELSE 0 END) AS readmissions,
  ROUND(100.0 * SUM(CASE WHEN readmitted_30_days = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmission_rate_pct
FROM hospital_patients
GROUP BY department
ORDER BY readmission_rate_pct DESC;

-- Readmissions by admission type
SELECT
  admission_type,
  COUNT(*) AS admissions,
  ROUND(100.0 * SUM(CASE WHEN readmitted_30_days = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS readmission_rate_pct
FROM hospital_patients
GROUP BY admission_type
ORDER BY readmission_rate_pct DESC;