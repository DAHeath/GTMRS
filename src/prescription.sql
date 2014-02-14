DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS 'order';

CREATE TABLE prescription (
  name TEXT,
  dosage INTEGER,
  duration INTEGER,
  date TIMESTAMP,
  doctor_note TEXT,
  FOREIGN KEY (participate_in_id) REFERENCES participate_in(id)
);

CREATE TABLE 'order' (
  patient_id INTEGER,
  participates_in_id INTEGER
);