DROP TABLE IF EXISTS visit;

CREATE TABLE visit (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_username VARCHAR(20),
  billing_amount FLOAT,
  diastolic_blood_pressure INTEGER,
  systolic_blood_pressure INTEGER,
  PRIMARY KEY (date_of_visit, doctor_license_no, patient_username),
  FOREIGN KEY (doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY (patient_username) REFERENCES patient(username)
);