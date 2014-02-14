DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS doctor_name;
DROP TABLE IF EXISTS doctor_availability;
DROP TABLE IF EXISTS doctor_rating;

CREATE TABLE doctor (
  user_id INTEGER,
  license_no INTEGER,
  doctor_name_id INTEGER,
  specialty TEXT,
  room_no INTEGER,
  PRIMARY KEY (user_id),
  PRIMARY KEY (license_no)
);

CREATE TABLE doctor_name (
  id INTEGER,
  first_name TEXT,
  last_name TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE doctor_availability (
  doctor_license_no INTEGER,
  start_time TIMESTAMP ,
  end_time TIMESTAMP
);

CREATE TABLE doctor_rating (
  doctor_license_no INTEGER,
  rating INTEGER
);