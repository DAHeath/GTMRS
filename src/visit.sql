DROP TABLE IF EXISTS visit;

CREATE TABLE visit (
  date_of_visit DATE,
  doctor_license_no INTEGER,
  patient_name VARCHAR (40),
  patient_phone INTEGER,
  billing_amount FLOAT,
  diastolic_blood_pressure INTEGER,
  systolic_blood_pressure INTEGER,
  PRIMARY KEY (date_of_visit, doctor_license_no, patient_name, patient_phone)
);