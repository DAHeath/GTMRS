DROP TABLE IF EXISTS doctor;

CREATE TABLE doctor (
  doctor_username VARCHAR(20),
  password VARCHAR(40) NOT NULL,
  license_no INTEGER,
  fname VARCHAR(20),
  lname VARCHAR(20),
  date_of_birth DATETIME,
  work_phone INTEGER,
  specialty VARCHAR(20),
  room_no INTEGER,
  home_address TEXT,
  PRIMARY KEY (doctor_username),
  FOREIGN KEY (doctor_username) REFERENCES user(username)
);