DROP TABLE IF EXISTS doctor_rating;

CREATE TABLE doctor_rating (
  doctor_username VARCHAR(20),
  patient_username VARCHAR(20),
  rating INTEGER,
  PRIMARY KEY (doctor_username, patient_username),
  FOREIGN KEY (patient_username) REFERENCES patient(patient_username),
  FOREIGN KEY (doctor_username) REFERENCES doctor(doctor_username)
);