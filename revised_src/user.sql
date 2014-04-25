DROP TABLE IF EXISTS user;

CREATE TABLE user (
  username VARCHAR(20),
  password VARCHAR(40) NOT NULL,
  PRIMARY KEY (username)
);