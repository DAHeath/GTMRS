/*
This is the list of all SQL queries
needed to replicate the actions specified
in the Information Flow Diagram.
*/

--Log In
SELECT password
FROM admin,doctor,patient
WHERE username=$username;
