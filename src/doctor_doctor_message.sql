DROP TABLE IF EXISTS doctor_doctor_message;

CREATE TABLE doctor_doctor_message (
  sending_doctor_license_no INTEGER,
  receiving_doctor_license_no INTEGER,
  content TEXT,
  datetime DATETIME,
  status BOOLEAN
);