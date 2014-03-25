DROP TABLE IF EXISTS surgery;

CREATE TABLE surgery (
  cpt_code INTEGER,

  doctor_license_no INTEGER NOT NULL,
  patient_username VARCHAR(20),
  surgery_type TEXT,
  cost FLOAT,

  anesthesia_start_time TIME,
  surgery_start_time TIME,
  surgery_end_time TIME,
  complications TEXT,
  no_assistants INTEGER,

  PRIMARY KEY (cpt_code),
  FOREIGN KEY (doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY (patient_username) REFERENCES patient(username)
);