DROP TABLE IF EXISTS surgery_preoperative_medication;

CREATE TABLE surgery_preoperative_medication (
  surgery_cpt_code INTEGER,
  medication TEXT,

  FOREIGN KEY (surgery_cpt_code) REFERENCES surgery(cpt_code)
);