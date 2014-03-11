DROP TABLE IF EXISTS visit_diagnosis;

CREATE TABLE visit_diagnosis (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_name VARCHAR (40),
  patient_phone INTEGER,
  diagnosis TEXT
);