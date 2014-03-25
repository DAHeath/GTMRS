DROP TABLE IF EXISTS rating;

CREATE TABLE rating (
  doctor_license_no INTEGER,
  patient_username VARCHAR(20),
  rating INTEGER,
  PRIMARY KEY (doctor_license_no, patient_username),
  FOREIGN KEY (patient_username) REFERENCES patient(username),
  FOREIGN KEY (doctor_license_no) REFERENCES doctor(license_no)
);