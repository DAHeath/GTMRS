DROP TABLE IF EXISTS visit;

CREATE TABLE visit (
  visit_id INTEGER,
  date_of_visit DATE,
  doctor_username VARCHAR(20),
  patient_username VARCHAR(20),
  billing_amount FLOAT,
  diastolic_blood_pressure INTEGER,
  systolic_blood_pressure INTEGER,
  PRIMARY KEY (visit_id),
  FOREIGN KEY (doctor_username) REFERENCES doctor(doctor_username),
  FOREIGN KEY (patient_username) REFERENCES patient(patient_username)
);