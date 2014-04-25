DROP TABLE IF EXISTS patient;

CREATE TABLE patient (
  patient_username VARCHAR (20),
  password CHAR (40) NOT NULL,
  name VARCHAR (40),
  date_of_birth DATETIME,
  gender BOOLEAN,
  address TEXT,
  home_phone INTEGER,
  work_phone INTEGER,x
  emergency_contact_name VARCHAR (40),
  emergency_contact_phone INTEGER,
  weight FLOAT,
  height FLOAT,
  annual_income INTEGER,
  card_number INTEGER (16),
  PRIMARY KEY (patient_username),
  FOREIGN KEY(patient_username) REFERENCES user(username),
  FOREIGN KEY(card_number) REFERENCES payment_information(card_number)
);