DROP TABLE IF EXISTS message;

CREATE TABLE message (
  user_name TEXT,
  doctor_license_no INTEGER,
  text TEXT,
  date TIMESTAMP,
  received BIT
)