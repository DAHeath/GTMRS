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

--Create (or update) Doctor Profile
UPDATE doctor
SET license_no=$license_no
    , first_name=$first_name
    , last_name=$last_name
    , date_of_birth=$date_of_birth
    , work_phone=$work_phone
    , specialty=$specialty
    , room_no=$room_no
    , home_address=$home_address
WHERE username=$current_username;

--Create (or update) Patient Profile
UPDATE patient
SET name=$name
    , phone=$phone
    , date_of_birth=$date_of_birth
    , gender=$gender
    , address=$address
    , annual_income=$annual_income
    , emergency_contact_name=$emergency_contact_name
    , emergency_contact_phone=$emergency_contact_phone
    , height=$height
    , weight=$weight
    , card_no=$card_no
WHERE username=$current_username;

--Search appointments (done by specialty)
SELECT *
FROM doctor_availability
WHERE username IN ( SELECT *
                    FROM doctor
                    WHERE doctor.specialty=$specialty );

--Request appointment
INSERT INTO appointment_request (patient_name, patient_phone, doctor_license_no, date, scheduled_time)
VALUES ($patient_name, $patient_phone, $doctor_license_no, $date, $scheduled_time);

--Order medications


--Enter payment information
INSERT INTO payment_information (card_no, cvv, type, card_holder_name, date_of_expiry)
VALUES ($card_no, $cvv, $type, $card_holder_name, $date_of_expiry)

--Retrieve payment information
SELECT *
FROM payment_information
WHERE card_holder_name=$current_name;




