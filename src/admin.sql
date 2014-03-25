DROP TABLE IF EXISTS admin;

CREATE TABLE admin (
  username VARCHAR (20),
  password CHAR (40) NOT NULL,
  PRIMARY KEY (username)
);
