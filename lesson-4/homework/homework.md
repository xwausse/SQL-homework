# Lesson 4: Filtering and Ordering Data

Here are 30 homework tasks for Lesson 4, categorized into easy, medium, and hard levels. These tasks cover:
✅ Filtering and Ordering Data
✅ Using SELECT TOP, OFFSET-FETCH
✅ Using ISNULL and COALESCE
✅ Order By (ASC, DESC)
✅ Where Clause Filtering
✅ LIKE operator
✅ Wildcard Characters
✅ ANY and ALL Operators

________________________________________

## 🟢 Easy-Level Tasks (10)
1. Write a query to select the top 5 employees from the Employees table.
2. Use SELECT DISTINCT to select unique ProductName values from the Products table.
3. Write a query that filters the Products table to show products with Price > 100.
4. Write a query to select all CustomerName values that start with 'A' using the LIKE operator.
5. Order the results of a Products query by Price in ascending order.
6. Write a query that uses the WHERE clause to filter for employees with Salary >= 5000 and Department = 'HR'.
7. Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".
8. Write a query that shows all products with Price BETWEEN 50 AND 100.
9. Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.
10. Order the results by ProductName in descending order.

________________________________________

## 🟠 Medium-Level Tasks (10)
11. Write a query to select the top 10 products from the Products table, ordered by Price DESC.
12. Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
13. Write a query that selects distinct Category and Price from the Products table.
14. Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or Department = 'Marketing'.
15. Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
16. Write a query to display all products with Price <= 1000 and Stock > 50, sorted by Stock in ascending order.
17. Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
18. Use IN operator to filter for employees who work in either 'HR', 'IT', or 'Finance'.
19. Write a query that uses the ANY operator to find employees who earn more than the average salary of all employees.
20. Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.

________________________________________

## 🔴 Hard-Level Tasks (10)
21. Write a query that selects the top 10 products with the highest sales, using TOP(10) and ordered by SalesAmount DESC.
22. Use COALESCE to combine FirstName and LastName into one column named FullName in the Employees table.
23. Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
24. Write a query that selects products whose Price is within 10% of the average price in the Products table.
25. Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
26. Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
27. Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
28. Use ORDER BY with OFFSET-FETCH to show employees with the highest salaries, displaying 10 employees at a time (pagination).
29. Write a query that filters the Orders table for orders placed in the last 30 days using BETWEEN and CURRENT_DATE.
30. Use ANY with a subquery to select all employees who earn more than the average salary for their department.
