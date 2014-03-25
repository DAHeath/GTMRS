DROP TABLE IF EXISTS visit_diagnosis;

CREATE TABLE visit_diagnosis (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_username VARCHAR (20),
  diagnosis TEXT,
  FOREIGN KEY (doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY (patient_username) REFERENCES patient(username)
);