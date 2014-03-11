DROP TABLE IF EXISTS rating;

CREATE TABLE rating (
  doctor_license_no INTEGER,
  patient_name VARCHAR (40),
  patient_phone INTEGER,
  rating INTEGER,
  PRIMARY KEY (doctor_license_no, patient_name, patient_phone)
);