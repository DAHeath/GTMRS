DROP TABLE IF EXISTS performs;

CREATE TABLE performs (
  doctor_username VARCHAR(20),
  patient_username VARCHAR(20),
  cpt_code INTEGER,
  surgery_start_time TIME,
  surgery_end_time TIME,
  anesthesia_start_time TIME,
  complications TEXT,
  no_assistants INTEGER,

  PRIMARY KEY (doctor_username, patient_username, cpt_code),
  FOREIGN KEY (doctor_username) REFERENCES doctor(doctor_username),
  FOREIGN KEY (patient_username) REFERENCES patient(patient_username),
  FOREIGN KEY (cpt_code) REFERENCES surgery(cpt_code)
);