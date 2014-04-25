DROP TABLE IF EXISTS patient_allergies;

CREATE TABLE patient_allergies (
  patient_username VARCHAR (20),
  allergy TEXT,
  PRIMARY KEY(patient_username, allergy),
  FOREIGN KEY (patient_username) REFERENCES patient(patient_username)
  );