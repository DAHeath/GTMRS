DROP TABLE IF EXISTS message;

CREATE TABLE message (
  text TEXT,
  date TIMESTAMP,
  received BIT,
  FOREIGN KEY (user_name) REFERENCES user(name),
  FOREIGN KEY (doctor_license_no) REFERENCES doctor(license_no)
)