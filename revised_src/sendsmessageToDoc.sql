DROP TABLE IF EXISTS sendsmessageToDoc;

CREATE TABLE sendsmessageToDoc (
  patient_username VARCHAR(20),
  doctor_username VARCHAR(20),
  datetime DATETIME,
  content TEXT,
  status BOOLEAN,
  PRIMARY KEY(patient_username, doctor_username, datetime)
  FOREIGN KEY(patient_username) REFERENCES patient(patient_username),
  FOREIGN KEY(doctor_username) REFERENCES doctor(doctor_username)
);