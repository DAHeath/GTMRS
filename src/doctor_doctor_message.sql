DROP TABLE IF EXISTS doctor_doctor_message;

CREATE TABLE doctor_doctor_message (
  sending_doctor_license_no INTEGER,
  receiving_doctor_license_no INTEGER,
  content TEXT,
  datetime DATETIME,
  status BOOLEAN,
  FOREIGN KEY(sending_doctor_license_no) REFERENCES doctor(license_no),
  FOREIGN KEY(receiving_doctor_license_no) REFERENCES doctor(license_no)
);