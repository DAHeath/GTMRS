DROP TABLE IF EXISTS doctor_user_message;

CREATE TABLE doctor_user_message (
  doctor_license_no INTEGER,
  username VARCHAR (20),
  content TEXT,
  datetime DATETIME,
  status BOOLEAN
);