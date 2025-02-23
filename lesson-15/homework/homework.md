-- Creating sample tables for demonstration CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, EmployeeName VARCHAR(100), ManagerID INT NULL );

-- Inserting 20 rows into Employees table INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (1, 'John Doe', NULL), (2, 'Jane Smith', 1), (3, 'Michael Brown', 1), (4, 'Emily Davis', 2), (5, 'Daniel Wilson', 2), (6, 'Olivia Taylor', 3), (7, 'Matthew Anderson', 3), (8, 'Sophia Thomas', 4), (9, 'David Jackson', 4), (10, 'Emma White', 5), (11, 'James Harris', 5), (12, 'Lucas Martin', 6), (13, 'Ava Thompson', 6), (14, 'Alexander Garcia', 7), (15, 'Mia Martinez', 7), (16, 'Elijah Robinson', 8), (17, 'Charlotte Clark', 8), (18, 'Benjamin Lewis', 9), (19, 'Amelia Hall', 9), (20, 'William Allen', 10);

Tasks

Task 1: Use a Derived Table to Find Employees with Managers

Write a query using a derived table to find employees along with their managers.

Task 2: Use a CTE to Find Employees with Managers

Write a query using a CTE to find employees along with their managers.

Task 3: Compare Results of Derived Table and CTE

Compare and analyze the output of the above two queries.

Task 4: Find Direct Reports for a Given Manager Using CTE

Write a CTE to find all direct reports of a given manager.

Task 5: Create a Recursive CTE to Find All Levels of Employees

Write a recursive CTE to display all levels of employees in the hierarchy.

Task 6: Count Number of Employees at Each Level Using Recursive CTE

Write a recursive CTE to count the number of employees at each level.

Task 7: Retrieve Employees Without Managers Using Derived Table

Write a query using a derived table to find employees who do not have a manager.

Task 8: Retrieve Employees Without Managers Using CTE

Write a query using a CTE to find employees who do not have a manager.

Task 9: Find Employees Reporting to a Specific Manager Using Recursive CTE

Write a recursive CTE to find all employees reporting to a specific manager.

Task 10: Find the Maximum Depth of Management Hierarchy

Write a recursive CTE to determine the maximum depth of the management hierarchy.

