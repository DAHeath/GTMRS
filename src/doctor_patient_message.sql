DROP TABLE IF EXISTS doctor_patient_message;

CREATE TABLE doctor_patient_message (
  doctor_license_no INTEGER,
  patient_username VARCHAR(20),
  content TEXT,
  datetime DATETIME,
  status BOOLEAN,
  sent_by BOOLEAN,
  FOREIGN KEY(doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY(patient_username) REFERENCES patient(username)
);
