DROP TABLE IF EXISTS patient_doctor_message;

CREATE TABLE patient_doctor_message (
  patient_username INTEGER,
  doctor_license_no INTEGER,
  content TEXT,
  datetime DATETIME,
  status BOOLEAN
);
