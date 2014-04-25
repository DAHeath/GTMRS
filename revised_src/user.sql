DROP TABLE IF EXISTS user;

CREATE TABLE user (
  username VARCHAR (20),
  password CHAR (40) NOT NULL,
  PRIMARY KEY (username)
);