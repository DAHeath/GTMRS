DROP TABLE IF EXISTS doctor_patient_message;

CREATE TABLE patient_doctor_message (
  doctor_license_no INTEGER,
  patient_username INTEGER,
  content TEXT,
  datetime DATETIME,
  status BOOLEAN
);
