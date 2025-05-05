
## SQL Puzzle Questions with Input and Output Tables

### Puzzle 1: In this puzzle you have to extract the month from the dt column and then append zero single digit month if any. Please check out sample input and expected output.

**Input Table: Dates**
```sql
CREATE TABLE Dates (
    Id INT,
    Dt DATETIME
);
INSERT INTO Dates VALUES
(1,'2018-04-06 11:06:43.020'),
(2,'2017-12-06 11:06:43.020'),
(3,'2016-01-06 11:06:43.020'),
(4,'2015-11-06 11:06:43.020'),
(5,'2014-10-06 11:06:43.020');
```

**Sample Input**
```
| Id |             Dt              |  
|----|-----------------------------|  
|  1 | 2018-04-06 11:06:43.020     |  
|  2 | 2017-12-06 11:06:43.020     |  
|  3 | 2016-01-06 11:06:43.020     |  
|  4 | 2015-11-06 11:06:43.020     |  
|  5 | 2014-10-06 11:06:43.020     |
```

**Expected Output:**
```
| Id | Dt                       | MonthPrefixedWithZero  |
|----|--------------------------|------------------------|
| 1  | 2018-04-06 11:06:43.020  | 04                     |
| 2  | 2017-12-06 11:06:43.020  | 12                     |
| 3  | 2016-01-06 11:06:43.020  | 01                     |
| 4  | 2015-11-06 11:06:43.020  | 11                     |
| 5  | 2014-10-06 11:06:43.020  | 10                     |

---
```
### Puzzle 2: In this puzzle you have to find out the unique Ids present in the table. You also have to find out the SUM of Max values of vals columns for each Id and RId. For more details please see the sample input and expected output.

**Input Table: MyTabel**
```sql
CREATE TABLE MyTabel (
    Id INT,
    rID INT,
    Vals INT
);
INSERT INTO MyTabel VALUES
(121, 9, 1), (121, 9, 8),
(122, 9, 14), (122, 9, 0), (122, 9, 1),
(123, 9, 1), (123, 9, 2), (123, 9, 10);
```


**Sample Input:**
```
| Id  | rID | Vals |  
|-----|-----|------|  
| 121 |  9  |  1   |  
| 121 |  9  |  8   |  
| 122 |  9  | 14   |  
| 122 |  9  |  0   |  
| 122 |  9  |  1   |  
| 123 |  9  |  1   |  
| 123 |  9  |  2   |  
| 123 |  9  | 10   |
```

**Expected Output:**
```
| Distinct_Ids | rID | TotalOfMaxVals |
|--------------|-----|----------------|
| 3            | 9   | 32             |
```

---

### Puzzle 3: In this puzzle you have to get records with at least 6 characters and maximum 10 characters. Please see the sample input and expected output.

**Input Table: TestFixLengths**
```sql
CREATE TABLE TestFixLengths (
    Id INT,
    Vals VARCHAR(100)
);
INSERT INTO TestFixLengths VALUES
(1,'11111111'), (2,'123456'), (2,'1234567'), 
(2,'1234567890'), (5,''), (6,NULL), 
(7,'123456789012345');
```
**Sample Input**
```
| Id |     Vals         |  
+----+------------------+  
|  1 |  11111111        |  
|  2 |  123456          |  
|  2 |  123467          |  
|  2 |  1234567890      |  
|  5 |                  |  
|  6 |  NULL            |  
|  7 |  123456789012345 |  
```

**Expected Output**
```
| Id |     Vals     |  
+----+--------------+  
|  1 |  11111111    |  
|  2 |  123456      |  
|  2 |  123467      |  
|  2 |  1234567890  |  
```

---

### Puzzle 4: In this puzzle you have to find the maximum value for each Id and then get the Item for that Id and Maximum value. Please check out sample input and expected output.

**Input Table: TestMaximum**
```sql
CREATE TABLE TestMaximum (
    ID INT,
    Item VARCHAR(20),
    Vals INT
);
INSERT INTO TestMaximum VALUES
(1, 'a1',15), (1, 'a2',20), (1, 'a3',90),
(2, 'q1',10), (2, 'q2',40), (2, 'q3',60), (2, 'q4',30),
(3, 'q5',20);
```

**Sample Input**
```
| ID | Item  | Vals |  
+----+-------+------+  
|  1 |  a1   |  15  |  
|  1 |  a2   |  20  |  
|  1 |  a3   |  90  |  
|  1 |  q1   |  10  |  
|  2 |  q2   |  40  |  
|  2 |  q3   |  60  |  
|  2 |  q4   |  30  |  
|  3 |  q5   |  20  |  
```

**Expected Output**
```
| ID | Item  | Vals |  
+----+-------+------+  
|  2 |  q3   |  60  |  
|  1 |  a3   |  90  |  
|  3 |  q5   |  20  |  
```

---

### Puzzle 5: In this puzzle you have to first find the maximum value for each Id and DetailedNumber, and then Sum the data using Id only. Can you do this both in a single SELECT ?. Please check out sample input and expected output.

**Input Table: SumOfMax**
```sql
CREATE TABLE SumOfMax (
    DetailedNumber INT,
    Vals INT,
    Id INT
);
INSERT INTO SumOfMax VALUES
(1,5,101), (1,4,101), (2,6,101), (2,3,101),
(3,3,102), (4,2,102), (4,3,102);
```

**Sample Input**
```
| DetailedNumber | Vals | Id  |  
+----------------+------+-----+  
|        1       |  5   | 101 |  
|        1       |  4   | 101 |  
|        1       |  6   | 101 |  
|        2       |  3   | 101 |  
|        3       |  3   | 102 |  
|        4       |  2   | 102 |  
|        4       |  3   | 102 |  
```

**Expected Output**
```
| Id  | SumofMax|  
+-----+---------+  
| 101 |   11    |  
| 102 |    6    |  
```

---
### Puzzle 6: In this puzzle you have to find difference between a and b column between each row and if the difference is not equal to 0 then show the difference i.e. a – b otherwise 0. Now you need to replace this zero with blank.Please check the sample input and the expected output.


**Input Table: TheZeroPuzzle**
```sql
CREATE TABLE TheZeroPuzzle (
    Id INT,
    a INT,
    b INT
);
INSERT INTO TheZeroPuzzle VALUES
(1,10,4), (2,10,10), (3,1, 10000000), (4,15,15);
```

**Sample Input**
```
| Id | a  |    b     |  
+----+----+----------+  
|  1 | 10 |    4     |  
|  2 | 10 |   10     |  
|  3 |  1 | 10000000 |  
|  4 | 15 |   15     |  
```

**Expected Output**
```
| Id | a  |    b     | OUTPUT  |  
+----+----+----------+---------+  
|  1 | 10 |    4     |    6    |  
|  2 | 10 |   10     |         |  
|  3 |  1 | 10000000 | -9999999|  
|  4 | 15 |   15     |         |
```
---


```sql
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    Product VARCHAR(50),
    Category VARCHAR(50),
    QuantitySold INT,
    UnitPrice DECIMAL(10,2),
    SaleDate DATE,
    Region VARCHAR(50)
);
INSERT INTO Sales (Product, Category, QuantitySold, UnitPrice, SaleDate, Region)
VALUES
('Laptop', 'Electronics', 10, 800.00, '2024-01-01', 'North'),
('Smartphone', 'Electronics', 15, 500.00, '2024-01-02', 'North'),
('Tablet', 'Electronics', 8, 300.00, '2024-01-03', 'East'),
('Headphones', 'Electronics', 25, 100.00, '2024-01-04', 'West'),
('TV', 'Electronics', 5, 1200.00, '2024-01-05', 'South'),
('Refrigerator', 'Appliances', 3, 1500.00, '2024-01-06', 'South'),
('Microwave', 'Appliances', 7, 200.00, '2024-01-07', 'East'),
('Washing Machine', 'Appliances', 4, 1000.00, '2024-01-08', 'North'),
('Oven', 'Appliances', 6, 700.00, '2024-01-09', 'West'),
('Smartwatch', 'Electronics', 12, 250.00, '2024-01-10', 'East'),
('Vacuum Cleaner', 'Appliances', 5, 400.00, '2024-01-11', 'South'),
('Gaming Console', 'Electronics', 9, 450.00, '2024-01-12', 'North'),
('Monitor', 'Electronics', 14, 300.00, '2024-01-13', 'West'),
('Keyboard', 'Electronics', 20, 50.00, '2024-01-14', 'South'),
('Mouse', 'Electronics', 30, 25.00, '2024-01-15', 'East'),
('Blender', 'Appliances', 10, 150.00, '2024-01-16', 'North'),
('Fan', 'Appliances', 12, 75.00, '2024-01-17', 'South'),
('Heater', 'Appliances', 8, 120.00, '2024-01-18', 'East'),
('Air Conditioner', 'Appliances', 2, 2000.00, '2024-01-19', 'West'),
('Camera', 'Electronics', 7, 900.00, '2024-01-20', 'North');
```
7. What is the total revenue generated from all sales?  
8. What is the average unit price of products?  
9. How many sales transactions were recorded?  
10. What is the highest number of units sold in a single transaction?  
11. How many products were sold in each category?  
12. What is the total revenue for each region?  
13. What is the total quantity sold per month?  
14. Which product generated the highest total revenue?  
15. Compute the running total of revenue ordered by sale date.  
16. How much does each category contribute to total sales revenue?  

---

**Input Table: Customers**
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    JoinDate DATE
);
INSERT INTO Customers (CustomerName, Region, JoinDate)
VALUES
('John Doe', 'North', '2022-03-01'),
('Jane Smith', 'West', '2023-06-15'),
('Emily Davis', 'East', '2021-11-20'),
('Michael Brown', 'South', '2023-01-10'),
('Sarah Wilson', 'North', '2022-07-25'),
('David Martinez', 'East', '2023-04-30'),
('Laura Johnson', 'West', '2022-09-14'),
('Kevin Anderson', 'South', '2021-12-05'),
('Sophia Moore', 'North', '2023-02-17'),
('Daniel Garcia', 'East', '2022-08-22');
```

17. Show all sales along with the corresponding customer names  
18. List customers who have not made any purchases  
19. Compute total revenue generated from each customer  
20. Find the customer who has contributed the most revenue  
21. Calculate the total sales per customer per month  

---

**Input Table: Products**
```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2)
);
INSERT INTO Products (ProductName, Category, CostPrice, SellingPrice)
VALUES
('Laptop', 'Electronics', 600.00, 800.00),
('Smartphone', 'Electronics', 350.00, 500.00),
('Tablet', 'Electronics', 200.00, 300.00),
('Headphones', 'Electronics', 50.00, 100.00),
('TV', 'Electronics', 900.00, 1200.00),
('Refrigerator', 'Appliances', 1100.00, 1500.00),
('Microwave', 'Appliances', 120.00, 200.00),
('Washing Machine', 'Appliances', 700.00, 1000.00),
('Oven', 'Appliances', 500.00, 700.00),
('Gaming Console', 'Electronics', 320.00, 450.00);
```

22. List all products that have been sold at least once  
23. Find the most expensive product in the Products table  
24. Show each sale with its corresponding cost price from the Products table  
25. Find all products where the selling price is higher than the average selling price in their category  
