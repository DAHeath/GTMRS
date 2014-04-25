/*
This is the list of all SQL queries
needed to replicate the actions specified
in the Information Flow Diagram.
*/

--Log In (FIXED)
SELECT password FROM doctor WHERE doctor_username=$username
UNION
SELECT password FROM patient WHERE patient_username=$username;

--Register (as Doctor) (GOOD)
INSERT INTO doctor (doctor_username, password) --rest of entry is blank until profile is filled out
VALUES ($username, $password);

--Register (as Patient) (GOOD)
INSERT INTO patient (patient_username, password) --again, blank until profile is updated
VALUES ($username, password);

--Create (or update) Doctor Profile (FIXED)
UPDATE doctor
SET license_no=$license_no
    , fname=$first_name
    , lname=$last_name
    , date_of_birth=$date_of_birth
    , work_phone=$work_phone
    , home_address=$home_address
    , specialty=$specialty
    , room_no=$room_no
WHERE doctor_username=$current_username;

--Create (or update) Patient Profile (FIXED)
UPDATE patient
SET name=$name
    , date_of_birth=$date_of_birth
    , gender=$gender
    , address=$address
    , work_phone=$work_phone
    , home_phone=$home_phone
    , emergency_contact_name=$emergency_contact_name
    , emergency_contact_phone=$emergency_contact_phone
    , weight=$weight
    , height=$height
    , annual_income=$annual_income
    , card_number=$card_no
WHERE username=$current_username;

--Search appointments (done by specialty) (FIXED)
SELECT *
FROM doctor_availability
WHERE doctor_username IN ( SELECT doctor_username
                           FROM doctor
                           WHERE specialty=$specialty );

--Request appointment (FIXED)
INSERT INTO appointments (doctor_username, patient_username, date, time)
VALUES ($doctor_username, $patient_username, $date, $time);

--Order medications (HALP, NO IDEA - prescriptions?!)


--Enter payment information
INSERT INTO payment_information (card_no, cvv, type, card_holder_name, date_of_expiry)
VALUES ($card_no, $cvv, $type, $card_holder_name, $date_of_expiry)

--Retrieve payment information
SELECT *
FROM payment_information
WHERE card_holder_name=$current_name;

--View  visit history
SELECT *
FROM visit

--View patient visit history
SELECT *
FROM visit
WHERE patient_name=$current_patient_name;

--Rate a doctor
INSERT INTO rating (doctor_license_no, patient_name, patient_phone, rating)
VALUES ($doctor_license_no, $current_patient_name, $current_patient_phone, $rating);

--View all patient visits
SELECT *
FROM visit
WHERE (doctor_license_no=$current_license AND patient_name=$entered_name AND patient_phone=$entered_phone);

--View surgeries performed
SELECT *
FROM surgery
WHERE patient_name=$entered_name;

--View appointments for month (ALSO HALP)
SELECT *
FROM appointment_request
WHERE date>$first_day_of_month AND date<$last_day_of_month --this is not right

--View appointments for day
SELECT *
FROM appointment_request
WHERE date=$today;

--Add patient visit
INSERT INTO visit (date_of_visit, doctor_license_no, patient_name, patient_phone,
                    billing_amount, diastolic_blood_pressure, systolic_blood_pressure)
VALUES ($date_of_visit, $doctor_license_no, $patient_name, $patient_phone,
                    $billing_amount, $diastolic_blood_pressure, $systolic_blood_pressure);
                    
--Prescribe medication
INSERT INTO prescription (date_of_visit, doctor_license_no, patient_name, patient_phone,
                            medicine_name, notes, dosage, duration)
VALUES ($date_of_visit, $doctor_license_no, $patient_name, $patient_phone,
                            $medicine_name, $notes, $dosage, $duration);
                            
--Create surgery record
INSERT INTO surgery (cpt_code, doctor_license_no, patient_name, patient_phone, surgery_type,
                        cost, anesthesia_start_time, surgery_start_time, surgery_end_time,
                        complications, no_assistants)
VALUES ($cpt_code, $doctor_license_no, $patient_name, $patient_phone, $surgery_type,
                        $cost, $anesthesia_start_time, $surgery_start_time, $surgery_end_time,
                        $complications, $no_assistants);
                        
--Send message (Doctor->Doctor)
INSERT INTO doctor_doctor_message (sending_doctor_license_no, receiving_doctor_license_no,
                                    content, datetime, status)
VALUES ($sending_doctor_license_no, $receiving_doctor_license_no, $content, $datetime, $status);

--Send message (Doctor->Patient)
INSERT INTO doctor_patient_message (doctor_license_no, patient_username, content, datetime, status)
VALUES ($doctor_license_no, $patient_username, $content, $datetime, $status)

--Send message (Patient->Doctor)
INSERT INTO patient_doctor_message (patient_username, doctor_license_no, content, datetime, status)
VALUES ($patient_username, $doctor_license_no, $content, $datetime, $status);

--View inbox
SELECT *
FROM doctor_doctor_message,doctor_patient_message,patient_doctor_message
WHERE ($current_license_no=doctor_doctor_message.sending_doctor_license_no
        OR $current_license_no=doctor_doctor_message.receiving_doctor_license_no
        OR $current_license_no=doctor_patient_message.doctor_license_no
        OR $current_license_no=patient_doctor_message.doctor_license_no
        OR $current_user=doctor_patient_message.patient_username
        OR $current_user=patient_doctor_message.patient_username); --this also looks incorrect :(

--View patient billing
SELECT *
FROM visit,surgery
WHERE patient_name=$entered_patient_name;

--View doctor performance
SELECT *
FROM rating,surgery
WHERE doctor_license_no=$current_license_no;
