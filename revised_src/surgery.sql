DROP TABLE IF EXISTS surgery;

CREATE TABLE surgery (
  cpt_code INTEGER,
  surgery_type TEXT,
  cost_of_surgery FLOAT,

  PRIMARY KEY (cpt_code)
);