DROP TABLE IF EXISTS doctor_availability;

CREATE TABLE doctor_availability (
  username VARCHAR (20),
  doctor_license_no INTEGER,
  day DATE,
  start_time TIME,
  end_time TIME,
  FOREIGN KEY(doctor_license_no) REFERENCES doctor(license_no)
);