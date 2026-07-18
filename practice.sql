

-- Use company_system
-- creating tables

CREATE TABLE employees (
employee_id int PRIMARY KEY  NOT NULL,
first_name varchar(20),
last_name varchar(20),
age int,
deparment varchar(50),
salary  decimal (20, 2)
);

-- USE library_management


CREATE TABLE books(
book_id int PRIMARY KEY NOT NULL,
title varchar(100),
author varchar(30),
category varchar(20),
price decimal(20,2),
published_year date 
);

CREATE TABLE customers(
customer_id INT PRIMARY KEY NOT NULL,
first_name char(20),
last_name char(20),
email varchar(50),
phone_number varchar(20),
city varchar(30)
);

-- Inserting  Data

-- USE company_system


INSERT INTO employees
VALUES(1,'Sandile','Khoza',27,'IT',5000),
(2,'Tessa','Motubatse',20,'HR',20000.00 ),
(3,'Boithuto','Silinda',35,'FINANCE',50000.00),
(4,'Hlulani','Maphanga',40,'OPERATIONS',25000.00),
(5,'Saybel','Khoza',28,'PLACEMENT',15000.00);

-- use library_mangement

INSERT INTO books  VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 150.00, '1925-04-10'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 180.00, '1960-07-11'),
(3, 'A Brief History of Time', 'Stephen Hawking', 'Science', 220.00, '1988-04-01'),
(4, 'Clean Code', 'Robert C. Martin', 'Technology', 350.00, '2008-08-01'),
(5, 'The Lean Startup', 'Eric Ries', 'Business', 210.00, '2011-09-13'),
(6, 'Sapiens', 'Yuval Noah Harari', 'History', 260.00, '2011-01-01'),
(7, 'Atomic Habits', 'James Clear', 'Self-Help', 190.00, '2018-10-16'),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 175.00, '1937-09-21'),
(9, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Technology', 450.00, '2009-07-31'),
(10, '1984', 'George Orwell', 'Fiction', 160.00, '1949-06-08');



INSERT INTO customers VALUES
(1, 'Thabo', 'Nkosi', 'thabo.nkosi@email.com', '0712345678', 'Johannesburg'),
(2, 'Lindiwe', 'Dube', 'lindiwe.dube@email.com', '0823456789', 'Pretoria'),
(3, 'Sipho', 'Mahlangu', 'sipho.mahlangu@email.com', '0734567890', 'Durban'),
(4, 'Naledi', 'Mokoena', 'naledi.mokoena@email.com', '0845678901', 'Cape Town'),
(5, 'Kagiso', 'Molefe', 'kagiso.molefe@email.com', '0756789012', 'Bloemfontein');


-- selecting data,
-- displaying all records from the employes tables.
-- USE company system

SELECT *
FROM employees;

-- display only the first_name,last name, and department of employes

SELECT first_name, last_name, deparment
FROM employees;

-- display only the title and the price of all books
-- USE library_management

SELECT title, price
FROM books;

-- WHERE Clause
-- ind all employees who belong to the IT department
 -- USE company_system

SELECT deparment
FROM employees
WHERE deparment = 'IT';

-- Find employees whose salary is greater than 2000
SELECT salary
FROM employees
WHERE salary > 20000;

-- Find customers who live in Johannesburg.

-- USE library_management
-- Find customers who live in Johannesburg.

SELECT city
FROM  customers
WHERE city ='johannesburg';

-- Find books where the price is less than 200

SELECT price
FROM books
WHERE price <200;

-- DISTINCT
-- Display all unique departments from the employees table.
-- USE company_system

SELECT DISTINCT deparment
FROM employees;

-- Display all unique cities from the customers table.
-- USE library_management

SELECT DISTINCT city
FROM customers;

-- Display all unique book categories.

SELECT DISTINCT category
FROM books

-- Display only the first 5 employees.
-- USE company_system


SELECT *
FROM employees
LIMIT 5

-- Display the first 3 most expensive books.
-- USE library_management

SELECT * 
FROM books
WHERE price > 150
LIMIT 3

-- UPDATE
 -- Update an employee's salary
  -- use company_system
 
 SELECT *
 FROM employees
 -- Update an employee's salary
 UPDATE  employees
 SET salary = 60000
 WHERE employee_id = 4;
-- Change the department of an employee.

UPDATE employees
SET  deparment = 'IT'
WHERE employee_id= 5;

-- Update a customer's phone number.
-- use library_management
select *
 FROM customers

UPDATE customers
SET phone_number= '766026847'
WHERE customer_id= '766026847'

-- DELETE
-- Delete one employee from the employees table
-- use company_system

DELETE FROM employees
WHERE employee_id= 1

-- Delete all books from a specific category
-- use library_management

DELETE FROM books
WHERE category = 'Fiction';

-- ALTER TABLE
-- Add a new column called email to the employees table.
 USE company_system
 
 ALTER TABLE employees
ADD COLUMN email VARCHAR(30);
-- Add a new column called stock_quantity to the books table
use library_management

ALTER TABLE books
ADD COLUMN  stock_quantity VARCHAR(30);
-- Change the name of a column in the customers table.
ALTER TABLE customers 
RENAME COLUMN phone_number TO contacts_number

-- Modify the data type of the salary column.
 ALTER TABLE employees
 MODIFY salary DECIMAL(40)
 
 -- RENAME
 -- Rename the employees table
 
 RENAME TABLE employees TO workers
 -- Rename the books table.
  RENAME TABLE books TO tomes
 
 
 
 
 































