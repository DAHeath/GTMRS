DROP TABLE IF EXISTS surgery_preop_meds;

CREATE TABLE surgery_preop_meds (
  surgery_cpt_code INTEGER,
  preop_medication TEXT,
  PRIMARY KEY (surgery_cpt_code, preop_medication),
  FOREIGN KEY (surgery_cpt_code) REFERENCES surgery(cpt_code)
);