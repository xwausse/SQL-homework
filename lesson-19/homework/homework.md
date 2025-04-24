--Lesson 19 SUBQUERIES, EXISTS

> **Notes before doing the tasks:**
> - Tasks should be solved using **SQL Server**.
> - Case insensitivity applies.
> - Alias names do not affect the score.
> - Scoring is based on the **correct output**.
> - One correct solution is sufficient.

```sql
CREATE TABLE #Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO #Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 1, 60000, '2020-01-15'),
(2, 'Jane', 'Smith', 2, 70000, '2019-03-22'),
(3, 'Emily', 'Johnson', 1, 65000, '2021-05-18'),
(4, 'Michael', 'Williams', 3, 80000, '2018-06-30'),
(5, 'Chris', 'Jones', 2, 72000, '2022-02-11'),
(6, 'Katie', 'Brown', 3, 61000, '2020-12-01'),
(7, 'Sarah', 'Davis', 1, 58000, '2023-01-25'),
(8, 'David', 'Miller', 2, 75000, '2017-04-17'),
(9, 'Laura', 'Wilson', 3, 69000, '2019-08-08'),
(10, 'Mark', 'Moore', 1, 62000, '2022-03-05'),
(11, 'Lisa', 'Taylor', 2, 73000, '2018-09-10'),
(12, 'James', 'Anderson', 3, 72000, '2021-07-15'),
(13, 'Nancy', 'Thomas', 1, 64000, '2020-05-30'),
(14, 'Robert', 'Jackson', 2, 68000, '2019-11-20'),
(15, 'Patricia', 'White', 3, 69000, '2018-10-01'),
(16, 'Charles', 'Harris', 1, 55000, '2023-02-28'),
(17, 'Jessica', 'Martinez', 2, 70000, '2021-06-20'),
(18, 'Daniel', 'Thompson', 3, 67000, '2017-07-14'),
(19, 'Matthew', 'Garcia', 1, 64000, '2022-04-25'),
(20, 'Danielle', 'Martinez', 2, 71000, '2020-03-12'),
(21, 'Paul', 'Robinson', 3, 78000, '2018-05-03'),
(22, 'Michelle', 'Clark', 1, 50000, '2023-03-10'),
(23, 'Joseph', 'Rodriguez', 2, 74000, '2021-02-09'),
(24, 'Angela', 'Lewis', 3, 66000, '2017-08-14'),
(25, 'Thomas', 'Lee', 1, 73000, '2022-01-19'),
(26, 'Rebecca', 'Walker', 2, 79000, '2019-12-12'),
(27, 'Scott', 'Hall', 3, 72000, '2022-06-11'),
(28, 'Betty', 'Allen', 1, 52000, '2023-01-28'),
(29, 'Andrew', 'Young', 2, 66000, '2021-05-15'),
(30, 'Arthur', 'Hernandez', 3, 71000, '2018-09-22'),
(31, 'Brittany', 'King', 1, 64000, '2020-10-05'),
(32, 'Jacqueline', 'Wright', 2, 70000, '2019-11-29'),
(33, 'Kelly', 'Scott', 3, 64000, '2019-08-16'),
(34, 'Gary', 'Torres', 1, 68000, '2020-07-13'),
(35, 'Sara', 'Nguyen', 2, 71000, '2021-04-24'),
(36, 'Albert', 'Hernandez', 3, 75000, '2019-06-20'),
(37, 'Samantha', 'Carter', 1, 49000, '2023-01-15'),
(38, 'Steve', 'Mitchell', 2, 77000, '2018-12-01'),
(39, 'Brandon', 'Perez', 3, 71000, '2020-09-11'),
(40, 'Deborah', 'Roberts', 1, 56000, '2019-10-22'),
(41, 'Laura', 'Turner', 2, 64000, '2021-05-04'),
(42, 'Philip', 'Phillips', 3, 69000, '2018-08-30'),
(43, 'Tina', 'Campbell', 1, 62000, '2020-11-07'),
(44, 'Greg', 'Parker', 2, 68000, '2022-03-14'),
(45, 'Dennis', 'Evans', 3, 71000, '2021-01-01'),
(46, 'Rose', 'Edwards', 1, 74000, '2020-09-05'),
(47, 'Rachel', 'Collins', 2, 78000, '2018-06-01'),
(48, 'Jordan', 'Stewart', 3, 70000, '2021-07-20'),
(49, 'Christine', 'Sanchez', 1, 61000, '2019-02-18'),
(50, 'Carlos', 'Morris', 2, 90000, '2022-05-27');

CREATE TABLE #Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO #Departments (DepartmentID, DepartmentName, Location)
VALUES
(1, 'Sales', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Marketing', 'Chicago'),
(4, 'Purchasing', 'Los Angeles'),
(5, 'Finance', 'Miami');
```

1. Retrieve Employees with Salary Greater than Average Salary

2. Write a query to check if there are any employees in Department 1 using the EXISTS clause

3. Write a query to return employees who work at the same department with Rachel Collins

4. Retrieve employees who were hired after the last hired person for the department 2

5. Find all employees whose salary is higher than the average salary of their respective department

6. Write a query to get the count of employees in each department using a subquery. Return the result right after each employee

7. Find the person who gets the minimum salary

8. Find all employees who work in departments where the average salary is greater than $65,000

9. List employees who were hired in the last 3 years from the last hire_date

10. If there is anyone earning more than or equal to $80000, return all employees from that department

11. Return the employees who earn the most in each department

12. Get the names of the latest hired employee in each deparmtent. Return Departmentname, Firstname, Lastname, and hire date

13. Find the average salary for employees in each department based on its location. Return the Location, DepartmentName, and AverageSalary

14. Check if there is anyone who gets the same as the average salary. If so, return everyone from that department

15. List all departments that have fewer employees than the overall average number of employees per department.

16. Retrieve the names of employees who do not work in the department with the highest average salary.

17. Create a query that returns the names of departments that do have employees using the EXISTS clause

18. Return departments which have more seniors than juniors. 
Juniors are those who have work experience less than 3 years, seniors more than 3 years. 
Consider the latest hire_date to calculate the years of experience

19. Return employees of the department with the most number of people

20. For each department, find the difference between the highest and lowest salaries
```sql

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10, 2)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

CREATE TABLE EmployeeProject (
    EmployeeProjectID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);


INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Budget) VALUES
(1, 'Project Alpha', '2020-01-01', '2020-12-31', 100000),
(2, 'Project Beta', '2021-01-01', '2021-12-31', 150000),
(3, 'Project Gamma', '2022-01-01', '2022-12-31', 200000),
(4, 'Project Delta', '2021-06-01', '2022-05-31', 250000),
(5, 'Project Epsilon', '2023-01-01', '2023-12-31', 300000);


INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary) VALUES 
(1, 'John', 'Doe', '2019-01-15', 80000),
(2, 'Jane', 'Smith', '2018-03-22', 95000),
(3, 'Emily', 'Johnson', '2021-05-18', 70000),
(4, 'Michael', 'Williams', '2020-06-30', 60000),
(5, 'Chris', 'Jones', '2022-02-11', 85000),
(6, 'Sarah', 'Davis', '2020-12-01', 75000),
(7, 'David', 'Miller', '2019-04-17', 90000),
(8, 'Laura', 'Wilson', '2021-08-08', 70000),
(9, 'Robert', 'Clark', '2021-01-01', 72000),
(10, 'Michelle', 'Lee', '2022-05-01', 88000);


INSERT INTO EmployeeProject (EmployeeProjectID, EmployeeID, ProjectID, Role) VALUES
(1, 1, 1, 'Lead'),
(2, 2, 1, 'Member'),
(3, 3, 2, 'Lead'),
(4, 4, 2, 'Member'),
(5, 5, 3, 'Member'),
(6, 6, 3, 'Lead'),
(7, 7, 4, 'Member'),
(8, 8, 4, 'Member'),
(9, 9, 5, 'Lead'),
(10, 10, 5, 'Member');
```
21. Find all project names that have no employees assigned as leads. Return the ProjectName.

22. Retrieve names of employees who earn more than the average salary of all employees 
involved in the projects they are working on. Return FirstName, LastName, Salary

23. List all projects where there is only one member is assigned

24. Find the project with the highest budget and show the difference of it with other projects

25. Identify projects where the total salary of employees assigned as leads 
exceeds the average salary of all lead employees across all projects
