DROP TABLE IF EXISTS prescription;

CREATE TABLE prescription (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_name VARCHAR (40),
  patient_phone INTEGER,
  medicine_name VARCHAR (20),
  notes TEXT,
  dosage TEXT,
  duration TIME,
  PRIMARY KEY
    (date_of_visit, doctor_license_no, patient_name, patient_phone, medicine_name)
);