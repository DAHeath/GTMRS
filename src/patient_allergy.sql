DROP TABLE IF EXISTS patient_allergy;

CREATE TABLE patient_allergy (
  patient_username VARCHAR(20),
  allergy TEXT,
  FOREIGN KEY(patient_username) REFERENCES patient(username)
);