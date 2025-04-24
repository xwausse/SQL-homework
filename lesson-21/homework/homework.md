# Lesson 21  WINDOW FUNCTIONS


## Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. Students are scored based on what their query returns(does it fulfill the requirments). One way of solution is enough if it is true, other ways might be suggested but should not affect the score.

```sql
CREATE TABLE ProductSales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    SaleDate DATE NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CustomerID INT NOT NULL
);

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID)
VALUES 
(1, 'Product A', '2023-01-01', 150.00, 2, 101),
(2, 'Product B', '2023-01-02', 200.00, 3, 102),
(3, 'Product C', '2023-01-03', 250.00, 1, 103),
(4, 'Product A', '2023-01-04', 150.00, 4, 101),
(5, 'Product B', '2023-01-05', 200.00, 5, 104),
(6, 'Product C', '2023-01-06', 250.00, 2, 105),
(7, 'Product A', '2023-01-07', 150.00, 1, 101),
(8, 'Product B', '2023-01-08', 200.00, 8, 102),
(9, 'Product C', '2023-01-09', 250.00, 7, 106),
(10, 'Product A', '2023-01-10', 150.00, 2, 107),
(11, 'Product B', '2023-01-11', 200.00, 3, 108),
(12, 'Product C', '2023-01-12', 250.00, 1, 109),
(13, 'Product A', '2023-01-13', 150.00, 4, 110),
(14, 'Product B', '2023-01-14', 200.00, 5, 111),
(15, 'Product C', '2023-01-15', 250.00, 2, 112),
(16, 'Product A', '2023-01-16', 150.00, 1, 113),
(17, 'Product B', '2023-01-17', 200.00, 8, 114),
(18, 'Product C', '2023-01-18', 250.00, 7, 115),
(19, 'Product A', '2023-01-19', 150.00, 3, 116),
(20, 'Product B', '2023-01-20', 200.00, 4, 117),
(21, 'Product C', '2023-01-21', 250.00, 2, 118),
(22, 'Product A', '2023-01-22', 150.00, 5, 119),
(23, 'Product B', '2023-01-23', 200.00, 3, 120),
(24, 'Product C', '2023-01-24', 250.00, 1, 121),
(25, 'Product A', '2023-01-25', 150.00, 6, 122),
(26, 'Product B', '2023-01-26', 200.00, 7, 123),
(27, 'Product C', '2023-01-27', 250.00, 3, 124),
(28, 'Product A', '2023-01-28', 150.00, 4, 125),
(29, 'Product B', '2023-01-29', 200.00, 5, 126),
(30, 'Product C', '2023-01-30', 250.00, 2, 127);
```
### 1. Write a query to assign a row number to each sale based on the SaleDate.
### 2. Write a query to rank products based on the total quantity sold (use DENSE_RANK())
### 3. Write a query to identify the top sale for each customer based on the SaleAmount.
### 4. Write a query to display each sale's amount along with the next sale amount in the order of SaleDate using the LEAD() function
### 5. Write a query to display each sale's amount along with the previous sale amount in the order of SaleDate using the LAG() function
### 6. Write a query to rank each sale amount within each product category.
### 7. Write a query to identify sales amounts that are greater than the previous sale's amount
### 8. Write a query to calculate the difference in sale amount from the previous sale for every product
### 9.  Write a query to compare the current sale amount with the next sale amount in terms of percentage change.
### 10. Write a query to calculate the ratio of the current sale amount to the previous sale amount within the same product.
### 11. Write a query to calculate the difference in sale amount from the very first sale of that product.
### 12. Write a query to find sales that have been increasing continuously for a product 
### (i.e., each sale amount is greater than the previous sale amount for that product).
### 13. Write a query to calculate a "closing balance" for sales amounts which adds the current sale amount to a running total of previous sales.
### 14. Write a query to calculate the moving average of sales amounts over the last 3 sales.
### 15. Write a query to show the difference between each sale amount and the average sale amount.

```sql
CREATE TABLE Employees1 (
    EmployeeID   INT PRIMARY KEY,
    Name         VARCHAR(50),
    Department   VARCHAR(50),
    Salary       DECIMAL(10,2),
    HireDate     DATE
);

INSERT INTO Employees1 (EmployeeID, Name, Department, Salary, HireDate) VALUES
(1, 'John Smith', 'IT', 60000.00, '2020-03-15'),
(2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'),
(3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'),
(4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'),
(5, 'William Wilson', 'IT', 62000.00, '2022-06-12'),
(6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'),
(7, 'James Anderson', 'HR', 52000.00, '2020-04-18'),
(8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'),
(9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'),
(10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'),
(11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'),
(12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'),
(13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'),
(14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'),
(15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'),
(16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'),
(17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'),
(18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'),
(19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'),
(20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');
```

### 16. Find Employees Who Have the Same Salary Rank
### 17. Identify the Top 2 Highest Salaries in Each Department
### 18. Find the Lowest-Paid Employee in Each Department
### 19. Calculate the Running Total of Salaries in Each Department
### 20. Find the Total Salary of Each Department Without GROUP BY
### 21. Calculate the Average Salary in Each Department Without GROUP BY
### 22. Find the Difference Between an Employee’s Salary and Their Department’s Average
### 23. Calculate the Moving Average Salary Over 3 Employees (Including Current, Previous, and Next)
### 24. Find the Sum of Salaries for the Last 3 Hired Employees
