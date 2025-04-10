# SQL Homework Tasks: CTEs and Derived Tables

This document contains a collection of SQL homework tasks divided into three difficulty levels: **Easy**, **Medium**, and **Difficult**.

Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. Students are scored based on what their query returns(does it fulfill the requirments). One way of solution is enough if it is true, other ways might be suggested but should not affect the score.

---

Easy Tasks 

1.Create a numbers table using a recursive query.

2.Beginning at 1, this script uses a recursive statement to double the number for each record

3.Write a query to find the total sales per employee using a derived table.(Sales, Employees)

4.Create a CTE to find the average salary of employees.(Employees)

5.Write a query using a derived table to find the highest sales for each product.(Sales, Products)

6.Use a CTE to get the names of employees who have made more than 5 sales.(Sales, Employees)

7.Write a query using a CTE to find all products with sales greater than $500.(Sales, Products)

8.Create a CTE to find employees with salaries above the average salary.(Employees)

9.Write a query to find the total number of products sold using a derived table.(Sales, Products)

10.Use a CTE to find the names of employees who have not made any sales.(Sales, Employees)


Medium Tasks

1.This script uses recursion to calculate factorials

2.This script uses recursion to calculate Fibonacci numbers

3.This script uses recursion to split a string into rows of substrings for each character in the string.(Example)

4.Create a CTE to rank employees based on their total sales.(Employees, Sales)

5.Write a query using a derived table to find the top 5 employees by the number of orders made.(Employees, Sales)

6.Use a CTE to calculate the sales difference between the current month and the previous month.(Sales)

7.Write a query using a derived table to find the sales per product category.(Sales, Products)

8.Use a CTE to rank products based on total sales in the last year.(Sales, Products)

9.Create a derived table to find employees with sales over $5000 in each quarter.(Sales, Employees)

10.Use a derived table to find the top 3 employees by total sales amount in the last month.(Sales, Employees)


Difficult Tasks

1.Create a numbers table that shows all numbers 1 through n and their order gradually increasing by the next number in the sequence.(Example:n=5 | 1, 12, 123, 1234, 12345)

2.Write a query using a derived table to find the employees who have made the most sales in the last 6 months.(Employees,Sales)

3.This script uses recursion to display a running total where the sum cannot go higher than 10 or lower than 0.(Numbers)

4.Given a table of employee shifts, and another table of their activities, merge the two tables and write an SQL statement that produces the desired output. If an employee is scheduled and does not have an activity planned, label the time frame as “Work”. (Schedule,Activity)

5.Create a complex query that uses both a CTE and a derived table to calculate sales totals for each department and product.(Employees, Sales, Products, Departments)












/*CREATE TABLE Schedule
(
ScheduleID  CHAR(1) PRIMARY KEY,
StartTime   DATETIME NOT NULL,
EndTime     DATETIME NOT NULL
);
GO

CREATE TABLE Activity
(
ScheduleID    CHAR(1) REFERENCES Schedule (ScheduleID),
ActivityName  VARCHAR(100),
StartTime     DATETIME,
EndTime       DATETIME,
PRIMARY KEY (ScheduleID, ActivityName, StartTime, EndTime)
);
GO

INSERT INTO Schedule (ScheduleID, StartTime, EndTime) VALUES
('A',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 15:00:00' AS DATETIME)),
('B',CAST('2021-10-01 10:15:00' AS DATETIME),CAST('2021-10-01 12:15:00' AS DATETIME));
GO

INSERT INTO Activity (ScheduleID, ActivityName, StartTime, EndTime) VALUES
('A','Meeting',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 10:30:00' AS DATETIME)),
('A','Break',CAST('2021-10-01 12:00:00' AS DATETIME),CAST('2021-10-01 12:30:00' AS DATETIME)),
('A','Meeting',CAST('2021-10-01 13:00:00' AS DATETIME),CAST('2021-10-01 13:30:00' AS DATETIME)),
('B','Break',CAST('2021-10-01 11:00:00'AS DATETIME),CAST('2021-10-01 11:15:00' AS DATETIME));

CREATE TABLE Numbers
(
Id         INTEGER,
StepNumber INTEGER,
[Count]    INTEGER
);
GO

INSERT INTO Numbers VALUES
 (1,1,1) 
,(1,2,-2)
,(1,3,-1)
,(1,4,12)
,(1,5,-2)
,(2,1,7)
,(2,2,-3);
GO

CREATE TABLE Example
(
Id       INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);
GO

INSERT INTO Example VALUES('123456789'),('abcdefghi');
GO

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1, 1500.00, '2025-01-01'),
(2, 2, 2, 2000.00, '2025-01-02'),
(3, 3, 3, 1200.00, '2025-01-03'),
(4, 4, 4, 1800.00, '2025-01-04'),
(5, 5, 5, 2200.00, '2025-01-05'),
(6, 6, 6, 1400.00, '2025-01-06'),
(7, 7, 1, 2500.00, '2025-01-07'),
(8, 8, 2, 1700.00, '2025-01-08'),
(9, 9, 3, 1600.00, '2025-01-09'),
(10, 10, 4, 1900.00, '2025-01-10'),
(11, 1, 5, 2100.00, '2025-01-11'),
(12, 2, 6, 1300.00, '2025-01-12'),
(13, 3, 1, 2000.00, '2025-01-13'),
(14, 4, 2, 1800.00, '2025-01-14'),
(15, 5, 3, 1500.00, '2025-01-15'),
(16, 6, 4, 2200.00, '2025-01-16'),
(17, 7, 5, 1700.00, '2025-01-17'),
(18, 8, 6, 1600.00, '2025-01-18'),
(19, 9, 1, 2500.00, '2025-01-19'),
(20, 10, 2, 1800.00, '2025-01-20'),
(21, 1, 3, 1400.00, '2025-01-21'),
(22, 2, 4, 1900.00, '2025-01-22'),
(23, 3, 5, 2100.00, '2025-01-23'),
(24, 4, 6, 1600.00, '2025-01-24'),
(25, 5, 1, 1500.00, '2025-01-25'),
(26, 6, 2, 2000.00, '2025-01-26'),
(27, 7, 3, 2200.00, '2025-01-27'),
(28, 8, 4, 1300.00, '2025-01-28'),
(29, 9, 5, 2500.00, '2025-01-29'),
(30, 10, 6, 1800.00, '2025-01-30'),
(31, 1, 1, 2100.00, '2025-02-01'),
(32, 2, 2, 1700.00, '2025-02-02'),
(33, 3, 3, 1600.00, '2025-02-03'),
(34, 4, 4, 1900.00, '2025-02-04'),
(35, 5, 5, 2000.00, '2025-02-05'),
(36, 6, 6, 2200.00, '2025-02-06'),
(37, 7, 1, 2300.00, '2025-02-07'),
(38, 8, 2, 1750.00, '2025-02-08'),
(39, 9, 3, 1650.00, '2025-02-09'),
(40, 10, 4, 1950.00, '2025-02-10');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
(1, 1, 'Laptop', 1000.00),
(2, 1, 'Smartphone', 800.00),
(3, 2, 'Tablet', 500.00),
(4, 2, 'Monitor', 300.00),
(5, 3, 'Headphones', 150.00),
(6, 3, 'Mouse', 25.00),
(7, 4, 'Keyboard', 50.00),
(8, 4, 'Speaker', 200.00),
(9, 5, 'Smartwatch', 250.00),
(10, 5, 'Camera', 700.00);


