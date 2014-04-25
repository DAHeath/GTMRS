DROP TABLE IF EXISTS doctor_availability;

CREATE TABLE doctor_availability (
  doctor_username VARCHAR(20),
  day DATE,
  start_time TIME,
  end_time TIME,
  PRIMARY KEY (doctor_username, day, start_time, end_time),
  FOREIGN KEY(doctor_username) REFERENCES doctor(doctor_username)
);