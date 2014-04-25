DROP TABLE IF EXISTS visit_diagnosis;

CREATE TABLE visit_diagnosis (
  visit_id INTEGER,
  diagnosis VARCHAR(50),
  PRIMARY KEY (visit_id, diagnosis),
  FOREIGN KEY (visit_id) REFERENCES visit(visit_id)
);