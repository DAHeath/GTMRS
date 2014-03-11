DROP TABLE IF EXISTS doctor;

CREATE TABLE doctor (
  username VARCHAR (20),
  license_no INTEGER,
  first_name VARCHAR (20),
  last_name VARCHAR (20),
  date_of_birth DATETIME,
  work_phone INTEGER,
  specialty VARCHAR (20),
  room_no INTEGER,
  home_address TEXT,
  PRIMARY KEY (license_no, username)
);