# Lesson 8 Homework Tasks

These homework tasks cover the following topics:
- **Table Relationships**
- **One to One, One to Many, Many to Many Relationships**
- **Cartesian Product (Cross Join)**
- **INNER Join**
- **Using Logical Operators in ON clause**

---

## 🟢 Easy-Level Tasks (10)

1. Write a query to join the Customers and Orders tables using an INNER JOIN to get the CustomerName and their OrderDate.
2. Write a query to demonstrate a One to One relationship between the EmployeeDetails and Employees tables by joining them.
3. Write a query to join the Products and Categories tables to show ProductName along with CategoryName using INNER JOIN.
4. Write a query to show all Customers and the corresponding OrderDate using LEFT JOIN between Customers and Orders.
5. Write a query that demonstrates a Many to Many relationship between Orders and Products tables using an intermediate OrderDetails table.
6. Write a query to perform a CROSS JOIN between Products and Categories, showing all possible combinations of products and categories.
7. Write a query to demonstrate the One to Many relationship between Customers and Orders using INNER JOIN.
8. Write a query to filter a CROSS JOIN result using the WHERE clause, showing only combinations of Products and Orders where OrderAmount > 500.
9. Write a query that uses INNER JOIN to join the Employees and Departments tables, showing employee names and their corresponding department names.
10. Write a query that uses the ON clause with a <> operator to join two tables and return rows where the values in the two columns are not equal.

---

## 🟠 Medium-Level Tasks (10)

11. Write a query to demonstrate a One to Many relationship by joining the Customers and Orders tables using INNER JOIN, showing the CustomerName and the total number of orders.
12. Write a query to demonstrate a Many to Many relationship between Students and Courses by joining through the StudentCourses table.
13. Write a query to use a CROSS JOIN between Employees and Departments tables, and filter the results by Salary > 5000 using the WHERE clause.
14. Write a query to demonstrate a One to One relationship by joining the Employee and EmployeeDetails tables, showing each employee’s name and their details.
15. Write a query to perform an INNER JOIN between Products and Suppliers and use the WHERE clause to filter only products supplied by 'Supplier A'.
16. Write a query to perform a LEFT JOIN between Products and Sales, and display all products along with their sales quantity (including products with no sales).
17. Write a query to join Employees and Departments using a WHERE clause, and show all employees whose salary is greater than 4000 and who work in the ‘HR’ department.
18. Write a query to show how to use the >= operator in the ON clause to join two tables and return rows where the values meet the condition.
19. Write a query to demonstrate INNER JOIN and use the >= operator to find all products with a price greater than or equal to 50, and their respective suppliers.
20. Write a query to demonstrate a CROSS JOIN between Sales and Regions, and use the WHERE clause to show only regions with sales greater than 1000.

---

## 🔴 Hard-Level Tasks (10)

21. Write a query that demonstrates a Many to Many relationship between Authors and Books using the intermediate AuthorBooks table, showing the AuthorName and the BookTitle.
22. Write a query to join Products and Categories using INNER JOIN, and filter the result to only include products where the CategoryName is not ‘Electronics’.
23. Write a query to perform a CROSS JOIN between Orders and Products, and filter the result with a WHERE clause to show only orders where the quantity is greater than 100.
24. Write a query that joins the Employees and Departments tables and uses a logical operator in the ON clause to only return employees who have been with the company for over 5 years.
25. Write a query to show the difference between INNER JOIN and LEFT JOIN by returning employees and their departments, ensuring that employees without departments are included in the left join.
26. Write a query that uses a CROSS JOIN between Products and Suppliers, and filters the result using WHERE to include only suppliers that supply products in 'Category A'.
27. Write a query to demonstrate a One to Many relationship using INNER JOIN between Orders and Customers, and apply the >= operator to filter only customers with at least 10 orders.
28. Write a query to demonstrate the Many to Many relationship between Courses and Students, showing all courses and the number of students enrolled using the COUNT function.
29. Write a query to use a LEFT JOIN between Employees and Departments tables, and filter the result using the WHERE clause to show only employees in the 'Marketing' department.
30. Write a query that uses the ON clause with <= operator to join two tables and return rows where the values in the columns meet the condition.
