DROP TABLE IF EXISTS patient;

CREATE TABLE patient (
  username VARCHAR (20),
  name VARCHAR (40),
  phone INTEGER,
  date_of_birth DATETIME,
  gender BOOLEAN,
  address TEXT,
  annual_income INTEGER,
  emergency_contact_name VARCHAR (40),
  emergency_contact_phone INTEGER,
  height FLOAT,
  weight FLOAT,
  PRIMARY KEY (username, name, phone)
);