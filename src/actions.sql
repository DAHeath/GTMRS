/*
This is the list of all SQL queries
needed to replicate the actions specified
in the Information Flow Diagram.
*/

--Log In
SELECT password
FROM admin,doctor,patient
WHERE username=$username;

--Register (as Doctor)
INSERT INTO doctor (username, password) --rest of entry is blank until profile is filled out
VALUES ($username, $password);

--Register (as Patient)
INSERT INTO patient (username, password) --again, blank until profile is updated
VALUES ($username, password);
