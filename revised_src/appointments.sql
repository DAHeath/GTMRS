DROP TABLE IF EXISTS appointments;

CREATE TABLE appointments (
  patient_username VARCHAR(20),
  doctor_username VARCHAR(20),
  date DATE,
  time TIME,
  PRIMARY KEY (doctor_username, patient_username),
  FOREIGN KEY(patient_username) REFERENCES patient(patient_username),
  FOREIGN KEY(doctor_username) REFERENCES doctor(doctor_username) 
);