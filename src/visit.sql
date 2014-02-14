DROP TABLE IF EXISTS participate_in;
DROP TABLE IF EXISTS visit;
DROP TABLE IF EXISTS blood_pressure;
DROP TABLE IF EXISTS diagnosis;

CREATE TABLE participate_in (
  id INTEGER,
  doctor_license_no INTEGER,
  patient_id INTEGER,
  PRIMARY KEY (id)
);

CREATE TABLE visit (
  time TIMESTAMP,
  blood_pressure_id integer,
  cost FLOAT,
  FOREIGN KEY (participate_in_id) REFERENCES participate_in(id)
);

CREATE TABLE blood_pressure(
  id INTEGER,
  diastolic INTEGER,
  systolic INTEGER,
  PRIMARY KEY (id)
);

CREATE TABLE diagnosis(
  note TEXT,
  participate_in_id INTEGER
);