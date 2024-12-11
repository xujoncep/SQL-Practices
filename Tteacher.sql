-- CREATE TABLE Employee (
--     EmpId integer PRIMARY KEY, 
--     FirstName varchar(20), 
--     LastName varchar(20), 
--     Email varchar(25), 
--     PhoneNo varchar(25), 
--     Salary integer
-- );

SELECT * FROM Employee;

ALTER TABLE Employee 
DROP COLUMN Salary;

INSERT INTO Employee (EmpId, FirstName, LastName, Email, PhoneNo) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678'),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '555-8765'),
(4, 'Sarah', 'Johnson', 'sarah.johnson@example.com', '555-4321'),
(5, 'David', 'Lee', 'david.lee@example.com', '555-6789'),
(6, 'Emma', 'Williams', 'emma.williams@example.com', '555-9876'),
(7, 'James', 'Miller', 'james.miller@example.com', '555-6543'),
(8, 'Olivia', 'Davis', 'olivia.davis@example.com', '555-3456'),
(9, 'Lucas', 'Garcia', 'lucas.garcia@example.com', '555-7890'),
(10, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '555-0987'),
(11, 'Benjamin', 'Wilson', 'benjamin.wilson@example.com', '555-3210'),
(12, 'Ava', 'Taylor', 'ava.taylor@example.com', '555-4567'),
(13, 'Alexander', 'Anderson', 'alexander.anderson@example.com', '555-7654'),
(14, 'Mia', 'Thomas', 'mia.thomas@example.com', '555-2345'),
(15, 'Elijah', 'Jackson', 'elijah.jackson@example.com', '555-6780'),
(16, 'Isabella', 'White', 'isabella.white@example.com', '555-8760'),
(17, 'Daniel', 'Harris', 'daniel.harris@example.com', '555-5432'),
(18, 'Amelia', 'Clark', 'amelia.clark@example.com', '555-2109'),
(19, 'Matthew', 'Lewis', 'matthew.lewis@example.com', '555-4325'),
(20, 'Charlotte', 'Young', 'charlotte.young@example.com', '555-6547');
