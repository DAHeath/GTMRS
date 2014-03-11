DROP TABLE IF EXISTS doctor_availability;

CREATE TABLE doctor_availability (
  username VARCHAR (20),
  license_no INTEGER,
  day DATE,
  start_time TIME,
  end_time TIME,
  PRIMARY KEY (username, license_no)
);