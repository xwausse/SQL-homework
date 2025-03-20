/*

# Lesson 9 Homework Tasks

These homework tasks cover the following topics:
- **Difference Between ON and WHERE Clauses**
- **INNER JOIN with WHERE Clause**
- **Outer Joins (LEFT, RIGHT, FULL)**
- **Self Join**

*/

--##  Easy-Level Tasks 

1. Write a query to join Employees and Departments using an INNER JOIN, and apply a WHERE clause to show only employees whose salary is greater than 50000.
2. Write a query to join Customers and Orders using an INNER JOIN, and apply the WHERE clause to return only orders placed in 2023.
3. Write a query to demonstrate a LEFT OUTER JOIN between Employees and Departments, showing all employees and their respective departments (including employees without departments).
4. Write a query to perform a RIGHT OUTER JOIN between Products and Suppliers, showing all suppliers and the products they supply (including suppliers without products).
5. Write a query to demonstrate a FULL OUTER JOIN between Orders and Payments, showing all orders and their corresponding payments (including orders without payments and payments without orders).
6. Write a query to perform a SELF JOIN on the Employees table to display employees and their respective managers (showing EmployeeName and ManagerName).
7. Write a query to join Students and Courses using INNER JOIN, and use the WHERE clause to show only students enrolled in 'Math 101'.(USE ENROLLMENTS TABLE AS A BRIDGE TABLE)
8. Write a query that uses INNER JOIN between Customers and Orders, and filters the result with a WHERE clause to show customers who have placed more than 3 items at once.
9. Write a query to join Employees and Departments using a LEFT OUTER JOIN and use the WHERE clause to filter employees in the 'HR' department(Human Resources).



--##  Medium-Level Tasks 

10. Write a query to perform an INNER JOIN between Employees and Departments, and use the HAVING clause to show employees who belong to departments with more than 10 employees.
11. Write a query to perform a LEFT OUTER JOIN between Products and Sales, and use the WHERE clause to filter only products with no sales.
12. Write a query to perform a RIGHT OUTER JOIN between Customers and Orders, and filter the result using the HAVING clause to show only customers who have placed at least one order.
13. Write a query that uses a FULL OUTER JOIN between Employees and Departments, and filters out the results where the department is NULL.
14. Write a query to perform a SELF JOIN on the Employees table to show employees who report to the same manager.
15. Write a query to perform a LEFT OUTER JOIN between Orders and Customers, followed by a WHERE clause to filter orders placed in the year 2022.
16. Write a query to use the ON clause with INNER JOIN to return only the employees from the 'Sales' department whose salary is greater than 50000.
17. Write a query to join Employees and Departments using INNER JOIN, and use WHERE to filter employees whose department''s DepartmentName is 'IT'.
18. Write a query to join Orders and Payments using a FULL OUTER JOIN, and use the WHERE clause to show only the orders that have corresponding payments.
19. Write a query to perform a LEFT OUTER JOIN between Products and Orders, and use the WHERE clause to show products that have no orders.



--##  Hard-Level Tasks 

20. Write a query using a JOIN between Employees and Departments, followed by a WHERE clause to show employees whose salary is higher than the average salary of all employees.
21. Write a query to perform a LEFT OUTER JOIN between Orders and Payments, and use the WHERE clause to return all orders placed before 2023 that have not been paid yet.
22. Write a query to perform a FULL OUTER JOIN between Products and Categories, and use the WHERE clause to filter only products that have no category assigned.
23. Write a query to perform a SELF JOIN on the Employees table to find employees who report to the same manager and earn more than 5000.
24. Write a query to join Employees and Departments using a RIGHT OUTER JOIN, and use the WHERE clause to show employees from departments where the department name starts with ‘M’.
25. Write a query to join Products and Sales, and use WHERE to filter only sales greater than 1000.
26. Write a query to perform a LEFT OUTER JOIN between Students and Courses, and use the WHERE clause to show only students who have not enrolled in 'Math 101'.(USE ENROLLMENTS TABLE AS A BRIDGE TABLE)
27. Write a query using a FULL OUTER JOIN between Orders and Payments, followed by a WHERE clause to filter out the orders with no payment.
28. Write a query to join Products and Categories using an INNER JOIN, and use the WHERE clause to filter products that belong to either 'Electronics' or 'Furniture'.

