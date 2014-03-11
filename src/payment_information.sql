DROP TABLE IF EXISTS payment_information;

CREATE TABLE payment_information (
  card_no INTEGER (16),
  cvv INTEGER (4),
  type VARCHAR (20),
  card_holder_name TEXT,
  date_of_expiry DATE,
  PRIMARY KEY (card_no)
);