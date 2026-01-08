-- Hospital Patient Analytics - Schema

CREATE TABLE IF NOT EXISTS hospital_patients (
  patient_id INTEGER,
  first_name TEXT,
  last_name TEXT,
  nationality TEXT,
  gender TEXT,
  age INTEGER,
  insurance_type TEXT,
  admission_type TEXT,
  department TEXT,
  diagnosis TEXT,
  bed_id INTEGER,
  admission_date TEXT,
  discharge_date TEXT,
  length_of_stay_days INTEGER,
  readmitted_30_days TEXT);