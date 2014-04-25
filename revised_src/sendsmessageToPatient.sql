DROP TABLE IF EXISTS sendsmessageToPatient;

CREATE TABLE sendsmessageToPatient (
  doctor_username VARCHAR(20),
  patient_username VARCHAR(20),
  datetime DATETIME,
  content TEXT,
  status BOOLEAN,
  PRIMARY KEY(patient_username, doctor_username, datetime),
  FOREIGN KEY(patient_username) REFERENCES patient(patient_username),
  FOREIGN KEY(doctor_username) REFERENCES doctor(doctor_username)
);