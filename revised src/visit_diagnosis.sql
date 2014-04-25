DROP TABLE IF EXISTS visit_diagnosis;

CREATE TABLE visit_diagnosis (
  visit_id INTEGER,
  diagnosis TEXT,
  PRIMARY KEY (visit_id, diagnosis),
  FOREIGN KEY (visit_id) REFERENCES visit(visit_id),
);