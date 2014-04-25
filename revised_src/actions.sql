/*
This is the list of all SQL queries
needed to replicate the actions specified
in the Information Flow Diagram.

REMEMBER:
1.) VALUES WITH THE $ SIGN ARE SUPPOSED TO BE MANUALLY FED IN
2.) LOTS OF THOSE VALUES WILL NEED TO BE IN QUOTES (FOR EXAMPLE, DATES)
*/

--Log In (FIXED)
SELECT password FROM user WHERE username=$username;

--Register (as Doctor) (GOOD)
INSERT INTO user (username, password) VALUES ($username, password);
INSERT INTO doctor (doctor_username, password) VALUES ($username, $password);

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

--Order medications (FIXED)
UPDATE prescription
SET ordered=true
WHERE medicine_name=$medicine_name
AND dosage=$dosage
AND duration=$duration;

--Enter payment information (FIXED)
INSERT INTO payment_information (card_number, cvv, type, card_holder, date_of_expiry)
VALUES ($card_no, $cvv, $type, $card_holder_name, $date_of_expiry)

--Retrieve payment information (GOOD)
SELECT *
FROM payment_information
WHERE card_holder=$current_name;

--View entire visit history (GOOD)
SELECT *
FROM visit;

--View visit history specific to currently logged in patient (FIXED)
SELECT *
FROM visit
WHERE patient_username=$current_patient_username;

--Rate a doctor (FIXED)
INSERT INTO doctor_rating (doctor_username, patient_username, rating)
VALUES ($doctor_username, $patient_username, $rating);

--View surgeries performed (CHANGED, BUT NOT SURE IF CORRECT)
SELECT *
FROM surgery;

--View appointments for month (or any specific date range) (FIXED)
SELECT *
FROM appointments
WHERE date>$YYYY-MM-DD AND date<$YYYY-MM-DD;

--Add patient visit (FIXED)
INSERT INTO visit
VALUES ($visit_id, $yyyy-mm-dd, $doctor_username, $patient_username, $billingamount, $diastolicBP, $systolicBP);
                    
--Prescribe medication
INSERT INTO prescription (date_of_visit, doctor_license_no, patient_name, patient_phone,
                            medicine_name, notes, dosage, duration)
VALUES ($date_of_visit, $doctor_license_no, $patient_name, $patient_phone,
                            $medicine_name, $notes, $dosage, $duration);
                            
--Create surgery record (FIXED)
INSERT INTO surgery (cpt_code, surgery_type, cost_of_surgery)
VALUES ($cpt_code, $surgery_type, $cost_of_surgery);
INSERT INTO surgery_preop_meds (surgery_cpt_code, preop_medication)
VALUES ($surgery_cpt_code, $preop_medication);
                        
--Send message to doctor (FIXED)
INSERT INTO sendsmessageToDoc
VALUES ($patient_username, $doctor_username, $yyyy-mm-dd[SPACE]hh:mm:ss, $contentofmessage, $readstatus);

--Send message to patient (FIXED)
INSERT INTO sendsmessageToPatient
VALUES ($doctor_username, $patient_username, $yyyy-mm-dd[SPACE]hh:mm:ss, $contentofmessage, $readstatus);

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
