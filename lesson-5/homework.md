# Lesson 5: Aliases, Joins, and Grouping

Here are 30 homework tasks for Lesson 5, categorized into easy, medium, and hard levels. These tasks cover:
✅ Aliases, Joining Tables
✅ UNION, UNION ALL, INTERSECT, EXCEPT
✅ Creating Conditional Columns with CASE and IIF
✅ Using IF, WHILE
✅ GROUP BY

________________________________________

## 🟢 Easy-Level Tasks (10)
1. Write a query that uses an alias to rename the ProductName column as Name in the Products table.
2. Write a query that uses an alias to rename the Customers table as Client for easier reference.
3. Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discontinued.
4. Write a query to find the intersection of Products and Products_Discontinued tables using INTERSECT.
5. Use UNION ALL to combine two tables, Products and Orders, that have the same structure.
6. Write a query to select distinct customer names (CustomerName) and their corresponding Country using SELECT DISTINCT.
7. Write a query that uses CASE to create a conditional column that displays 'High' if Price > 100, and 'Low' if Price <= 100.
8. Write a query to filter Employees by Department and group them by Country.
9. Use GROUP BY to find the number of products (ProductID) in each Category.
10. Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise.

________________________________________

## 🟠 Medium-Level Tasks (10)
11. Write a query that joins the Orders and Customers tables using INNER JOIN and aliases the CustomerName as ClientName.
12. Use UNION to combine results from two queries that select ProductName from Products and ProductName from OutOfStock tables.
13. Write a query that returns the difference between the Products and DiscontinuedProducts tables using EXCEPT.
14. Write a query that uses CASE to assign a value of 'Eligible' to customers who have placed more than 5 orders, otherwise 'Not Eligible'.
15. Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 100, and 'Affordable' if less.
16. Write a query that uses GROUP BY to count the number of orders per CustomerID in the Orders table.
17. Write a query to find employees in the Employees table who have either Age < 25 or Salary > 6000.
18. Use GROUP BY to find the total sales (SalesAmount) per Region in the Sales table.
19. Write a query that combines data from the Customers and Orders tables using LEFT JOIN, and create an alias for OrderDate.
20. Use IF statement to update the salary of an employee based on their department, increase by 10% if they work in 'HR'.

________________________________________

## 🔴 Hard-Level Tasks (10)
21. Write a query that uses UNION ALL to combine two tables, Sales and Returns, and calculate the total sales and returns for each product.
22. Use INTERSECT to show products that are common between Products and DiscontinuedProducts tables.
23. Write a query that uses CASE to assign 'Top Tier' if TotalSales > 10000, 'Mid Tier' if TotalSales BETWEEN 5000 AND 10000, and 'Low Tier' otherwise.
24. Write a query that combines multiple conditions using IF and WHILE to iterate over all rows of the Employees table and update their salary based on certain criteria.
25. Use EXCEPT to find customers who have placed orders but do not have a corresponding record in the Invoices table.
26. Write a query that uses GROUP BY on three columns: CustomerID, ProductID, and Region, and calculates the total sales.
27. Write a query that uses CASE to apply multiple conditions and returns a Discount column based on the Quantity purchased.
28. Use UNION and INNER JOIN to return all products that are either in the Products or DiscontinuedProducts table and also show if they are currently in stock.
29. Write a query that uses IIF to create a new column StockStatus, where the status is 'Available' if Stock > 0, and 'Out of Stock' if Stock = 0.
30. Write a query that uses EXCEPT to find customers in the Customers table who are not in the VIP_Customers table based on CustomerID.
