DROP TABLE IF EXISTS surgery;
DROP TABLE IF EXISTS surgery_times;
DROP TABLE IF EXISTS surgery_type;
DROP TABLE IF EXISTS surgery_medication;

CREATE TABLE performs (
  id INTEGER,
  doctor_license_no INTEGER,
  patient_id INTEGER,
  PRIMARY KEY (id)
);

CREATE TABLE surgery (
  complications_note TEXT,
  num_assistants INTEGER,
  times_id INTEGER,
  type_id INTEGER,
  FOREIGN KEY (performs_id) REFERENCES performs(id)
);

CREATE TABLE surgery_times (
  id INTEGER,
  anesthesia_start TIMESTAMP,
  operation_start TIMESTAMP,
  operation_end TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE surgery_type (
  id INTEGER,
  cost FLOAT,
  name TEXT,
  cpt_code TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE surgery_medication (
  medication TEXT,
  performs_id INTEGER
);