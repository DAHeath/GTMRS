DROP TABLE IF EXISTS prescription;

CREATE TABLE prescription (
  visit_id INTEGER(10),
  medicine_name VARCHAR (20),
  notes TEXT,
  dosage TEXT,
  duration TIME,
  ordered BOOLEAN,
  PRIMARY KEY
    (visit_id, medicine_name),
  FOREIGN KEY(visit_id) REFERENCES visit(visit_id),
);