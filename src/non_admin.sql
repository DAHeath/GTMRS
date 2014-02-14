DROP TABLE IF EXISTS non_admin;

CREATE TABLE non_admin(
  user_id INTEGER,
  date_of_birth TIMESTAMP,
  address TEXT,
  work_phone TEXT,
  PRIMARY KEY (user_id)
);