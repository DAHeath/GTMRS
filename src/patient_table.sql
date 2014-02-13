DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS patient_allergy;

CREATE TABLE patient (
  id INTEGER,
  name TEXT,
  income INTEGER,
  height FLOAT,
  weight FLOAT,
  gender BIT,
  home_phone TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE patient_allergy (
  patient_id INTEGER,
  allergy TEXT
);