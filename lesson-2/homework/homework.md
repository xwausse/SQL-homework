# Lesson 2: DDL and DML Commands

Here are 30 homework tasks on DDL and DML commands, categorized into easy, medium, and hard levels.
Each category contains 10 assignments covering:
✅ Creating SQL objects
✅ Different ways of data insertion
✅ Altering SQL objects
✅ Applying DROP, TRUNCATE, and DELETE
✅ Using SSMS graphical tools

________________________________________

## 🟢 Easy-Level Tasks (10)
1. Define and explain DDL and DML. Give two examples of each.
2. Write a query to create a table Employees with columns: EmpID (INT, PRIMARY KEY), Name (VARCHAR(50)), Salary (DECIMAL(10,2)).
3. Insert three records into the Employees table using the INSERT INTO statement.
4. Write a query to update the Salary of an employee where EmpID = 1.
5. Delete a record from the Employees table where EmpID = 2.
6. Explain the difference between DELETE, DROP, and TRUNCATE with examples.
7. Modify the Name column in the Employees table to VARCHAR(100).
8. Use the ALTER TABLE statement to add a new column Department (VARCHAR(50)) to the Employees table.
9. Use SSMS graphical tools to create a database named CompanyDB. Take a screenshot.
10. Describe the purpose of the TRUNCATE TABLE command.

________________________________________

## 🟠 Medium-Level Tasks (10)
11. Create a table Departments with a PRIMARY KEY on DeptID and a FOREIGN KEY referencing Employees.EmpID.
12. Insert five records into the Departments table using INSERT INTO SELECT from another table.
13. Write a query that updates the Department of all employees where Salary > 5000 to 'Management'.
14. Write a query to remove all records from the Employees table without removing its structure.
15. Explain the difference between VARCHAR and NVARCHAR when creating tables.
16. Modify an existing column Salary to change its data type to FLOAT.
17. Drop the column Department from the Employees table using ALTER TABLE.
18. Use SSMS graphical tools to modify the Employees table by adding a new column JoinDate (DATE). Take a screenshot.
19. Create a temporary table and insert two records into it.
20. Write a query to remove the Departments table completely from the database.

________________________________________

## 🔴 Hard-Level Tasks (10)
21. Write a script that creates a Customers table with a CHECK constraint ensuring Age > 18.
22. Write a query to delete all employees who have not received a salary increase in the last two years.
23. Create a stored procedure that inserts a new employee record into the Employees table.
24. Write a query that creates a backup table Employees_Backup with the same structure as Employees.
25. Write a query to insert multiple rows using MERGE INTO from another table.
26. Drop the CompanyDB database and recreate it using a script.
27. Use SSMS graphical tools to rename the Employees table to StaffMembers. Take a screenshot.
28. Explain the difference between CASCADE DELETE and CASCADE UPDATE with an example.
29. Write a query to reset the IDENTITY column seed of Employees after deleting all records.
30. Write a query that creates a table with both PRIMARY KEY and UNIQUE constraints on different columns.
