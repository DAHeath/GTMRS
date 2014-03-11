DROP TABLE IF EXISTS appointment_request;

CREATE TABLE appointment_request (
  patient_name VARCHAR (40),
  patient_phone INTEGER,
  doctor_license_no INTEGER,
  date DATE,
  scheduled_time TIME
);