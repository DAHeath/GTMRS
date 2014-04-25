DROP TABLE IF EXISTS communicates_with;

CREATE TABLE communicates_with (
  sender_username VARCHAR(20),
  receiver_username VARCHAR(20),
  datetime DATETIME,
  content TEXT,
  status BOOLEAN,
  PRIMARY KEY (sender_username, receiver_username, datetime),
  FOREIGN KEY(sender_username) REFERENCES doctor(doctor_username),
  FOREIGN KEY(receiver_username) REFERENCES doctor(doctor_username)
);