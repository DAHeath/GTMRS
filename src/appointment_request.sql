DROP TABLE IF EXISTS appointment_request;

CREATE TABLE appointment_request (
  patient_username VARCHAR(20),
  doctor_license_no INTEGER,
  date DATE,
  scheduled_time TIME,
  FOREIGN KEY(patient_username) REFERENCES patient(username),
  FOREIGN KEY(doctor_license_no) REFERENCES doctor(license_no)
);