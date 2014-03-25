DROP TABLE IF EXISTS prescription;

CREATE TABLE prescription (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_username VARCHAR(20),
  medicine_name VARCHAR (20),
  notes TEXT,
  dosage TEXT,
  duration TIME,
  PRIMARY KEY
    (date_of_visit, doctor_license_no, patient_username, medicine_name),
  FOREIGN KEY(doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY(patient_username) REFERENCES patient(username)
);