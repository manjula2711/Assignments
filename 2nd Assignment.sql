CREATE DATABASE ONLINE_CONSULTATION;

CREATE TABLE DOCTOR_TABLE(ID INT PRIMARY KEY NOT NULL,
NAME VARCHAR(30) NOT NULL,
SPECIALIZATION VARCHAR(50) NOT NULL
);

SELECT * FROM doctor_table;

INSERT INTO DOCTOR_TABLE VALUES(101,'RAJEEV','NEUROLOGIST'),
(102,'MOHAN','CARDIOLOGIST'),
(103,'MAHENDRA','DERMATOLOGIST'),
(104,'PRIYANKA','GYNECOLOGIST'),
(105,'AREEF','OPHTHALMOLOGIST'),
(106,'ROHITH','DENTIST'),
(107,'DINESH','ANESTHEIOLOGIST'),
(108,'DHANUSH','PSYCHIATRIST'),
(109,'ANAND','RADIOLOGIST'),
(110,'KARTHIK','SURGEON');

CREATE TABLE APPOINTMENTS_TABLE(PATIENT_ID INT PRIMARY KEY NOT NULL,
PATIENT_NAME VARCHAR(30) NOT NULL,
DOCTOR_NAME VARCHAR(30) NOT NULL,
APPOINTMENT_DATE DATE NOT NULL);

SELECT * FROM APPOINTMENTS_TABLE;

INSERT INTO APPOINTMENTS_TABLE VALUES(1001,'GOWTHAMI','DHANUSH','2023-04-23'),
(1002,'RISHIK','DHANUSH','2023-04-24'),
(1003,'CHANDU','PRIYANKA','2023-05-02'),
(1004,'BHAVANA','ROHITH','2023-05-20'),
(1005,'SURAJ','AREEF','2023-06-12'),
(1006,'SWATHI','KARTHIK','2023-07-18'),
(1007,'VAMSI','KARTHIK','2023-07-19'),
(1008,'JEELAN','ANAND','2023-08-01'),
(1009,'FARIDA','MOHAN','2023-08-05'),
(1010,'KAIF','MAHENDRA','2023-08-06');

CREATE TABLE PATIENT_TABLE(PATIENT_ID INT ,
PATIENT_NAME VARCHAR(30),
AGE INT,
DOCTOR_NAME VARCHAR(30),
APPOINTMENT_DATE DATE);

SELECT * FROM PATIENT_TABLE;

INSERT INTO PATIENT_TABLE VALUES(1001,'GOWTHAMI',23,'DHANUSH','2023-04-23'),
(1002,'RISHIK',25,'DHANUSH','2023-04-24'),
(1003,'CHANDU',45,'PRIYANKA','2023-05-02'),
(1004,'BHAVANA',43,'ROHITH','2023-05-20'),
(1005,'SURAJ',28,'AREEF','2023-06-12'),
(1006,'SWATHI',46,'KARTHIK','2023-07-18'),
(1007,'VAMSI',19,'KARTHIK','2023-07-19'),
(1008,'JEELAN',25,'ANAND','2023-08-01'),
(1009,'FARIDA',35,'MOHAN','2023-08-05'),
(1010,'KAIF',29,'MAHENDRA','2023-08-06');

CREATE TABLE REVIEW_TABLE(PATIENT_ID INT,
 PATIENT_NAME VARCHAR(30),
 REVIEW VARCHAR(80)
 );
 
 SELECT * FROM REVIEW_TABLE;
 
 INSERT INTO REVIEW_TABLE VALUES(1001,'GOWTHAMI','GOOD STAFF'),
(1002,'RISHIK','GOOD ENVIRONMENT'),
(1003,'CHANDU','PROPER CLEANILINESS IN ROOMS'),
(1004,'BHAVANA','NEED MORE STAFF'),
(1005,'SURAJ','NEED SOME MORE ATTENTION TOWARDS PATIENTS'),
(1006,'SWATHI','GOOD SERVICES'),
(1007,'VAMSI','GOOD STAFF'),
(1008,'JEELAN','STAFF SERVICES ARE GOOD'),
(1009,'FARIDA','ALL FACILITIES ARE AVAILABLE'),
(1010,'KAIF','NEED SOME MORE FACILITIES');

-- -------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CONTACT_TABLE(ID INT PRIMARY KEY NOT NULL,
EMAIL VARCHAR(30),
FNAME VARCHAR(20),
LNAME VARCHAR(20),
COMPANY VARCHAR(20),
ACTIVE_FLAG INT,
OPT_OUT INT);

INSERT INTO CONTACT_TABLE VALUES(123,'a@a.com','Kian','Seth','ABC',1,1),
(133,'b@a.com','Neha','Seth','ABC',1,0),
(234,'c@c.com','Puru','Malik','CDF',0,0),
(342,'d@d.com','Sid','Maan','TEG',1,0);

SELECT * FROM CONTACT_TABLE;

-- Select all columns from the contact table where the active flag is 1

SELECT * FROM CONTACT_TABLE WHERE ACTIVE_FLAG = 1;

-- Deactivate contacts who are opted out 

UPDATE CONTACT_TABLE SET ACTIVE_FLAG = 0 WHERE OPT_OUT = 1;

-- Delete all the contacts who have the company name as ‘ABC’

DELETE FROM CONTACT_TABLE WHERE COMPANY = "ABC";

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1

INSERT INTO CONTACT_TABLE(ID,EMAIL,FNAME,COMPANY,ACTIVE_FLAG,OPT_OUT)VALUES(658,'mili@gmail.com','mili','DGH',1,1);

-- Pull out the unique values of the company column 

SELECT DISTINCT(COMPANY) FROM CONTACT_TABLE;

-- Update name “mili” to “niti”.

UPDATE CONTACT_TABLE SET FNAME = "MILI" WHERE FNAME = "NITI";

-- --------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CUSTOMER(CUSTOMER_ID INT,
CUST_NAME VARCHAR(30),
CITY VARCHAR(30),
GRADE INT,
SALESMAN_ID INT);

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007);

INSERT INTO CUSTOMER(CUSTOMER_ID,CUST_NAME,CITY,SALESMAN_ID)VALUES(3003,'BRAD GUZAN','LONDON',5005);
       
CREATE TABLE SALESMAN(SALESMAN_ID INT,
NAME VARCHAR(30),
CITY VARCHAR(30),
COMMISSION FLOAT);
 
 INSERT INTO SALESMAN VALUES(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);

SELECT CUSTOMER.CUST_NAME,CUSTOMER.CITY,CUSTOMER.GRADE,SALESMAN.SALESMAN_ID,SALESMAN.CITY
FROM CUSTOMER INNER JOIN SALESMAN ON CUSTOMER.SALESMAN_ID=SALESMAN.SALESMAN_ID WHERE
CUSTOMER.GRADE < 100 ORDER BY CUSTOMER.CUSTOMER_ID ASC;

