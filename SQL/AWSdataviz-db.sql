-- CRUD: four basic functions of persistent data storage
-- Create, Read, Update, and Delete (CRUD)
 
 -- Create tables (C)
CREATE TABLE doctors (
 id INT PRIMARY KEY NOT NULL,
 speciality TEXT,
 taking_patients BOOLEAN
);

CREATE TABLE patients (
 id INT NOT NULL,
 doctor_id INT NOT NULL,
 health_status TEXT,
 PRIMARY KEY (id, doctor_id),
 FOREIGN KEY (doctor_id) REFERENCES doctors (id)
);

INSERT INTO doctors(id, speciality, taking_patients)
VALUES
(1, 'cardiology', TRUE),
(2, 'orthopedics', FALSE),
(3, 'pediatrics', TRUE);

INSERT INTO patients (id, doctor_id, health_status)
VALUES
(1, 2, 'healthy'),
(2, 3, 'sick'),
(3, 2, 'sick'),
(4, 1, 'healthy'),
(5, 1, 'sick');

-- Read tables (R)
select * from doctors;
select * from patients;

-- Update rows (U)
update doctors
set taking_patients = false
where id = 1;

update patients
set health_status = 'healthy'
where id = 1;

-- Delete row (D)
delete from patients
where id = 1;