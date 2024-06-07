CREATE DATABASE BarqDev;

USE BarqDev;

CREATE TABLE payment (
COUSTOMER_ID INT PRIMARY KEY,
COUSTOMER VARCHAR(50),
MODE VARCHAR(50),
CITY VARCHAR(50)
);

INSERT INTO payment (COUSTOMER_ID, COUSTOMER, MODE, CITY)
VALUES
  (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
  (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
  (103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
  (104, 'Liam Donovan', 'Netbanking', 'Denver'),
  (105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
  (106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
  (107, 'Ava Patel', 'Debit Card', 'Phoenix'),
  (108, 'Lucas Carter', 'Netbanking', 'Boston'),
  (109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
  (110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT MODE, COUNT(COUSTOMER) FROM payment GROUP BY MODE ;