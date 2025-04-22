# 📘 Lesson-16: Practice

## Notes Before Doing the Tasks

- ✅ All tasks must be solved using **SQL Server**.
- 🔠 Case sensitivity (uppercase or lowercase) does **not** affect scoring.
- ✏️ Use of alias names is allowed and does not affect the result.
- 🧠 Only the correctness of the result matters — any **correct** solution is accepted.

---

## Task 1: De-Group the Data

**Input Table: `Grouped`**

```sql
DROP TABLE IF EXISTS Grouped;
CREATE TABLE Grouped
(
  Product  VARCHAR(100) PRIMARY KEY,
  Quantity INTEGER NOT NULL
);
INSERT INTO Grouped (Product, Quantity) VALUES
('Pencil',3),('Eraser',4),('Notebook',2);
```

**Expected Output:**

| Product  | Quantity |
|----------|----------|
| Pencil   | 1        |
| Pencil   | 1        |
| Pencil   | 1        |
| Eraser   | 1        |
| Eraser   | 1        |
| Eraser   | 1        |
| Eraser   | 1        |
| Notebook | 1        |
| Notebook | 1        |

---

## Task 2: Region Sales Report

**Input Table: `#RegionSales`**

```sql
DROP TABLE IF EXISTS #RegionSales;
GO
CREATE TABLE #RegionSales
(
  Region      VARCHAR(100),
  Distributor VARCHAR(100),
  Sales       INTEGER NOT NULL,
  PRIMARY KEY (Region, Distributor)
);
GO
INSERT INTO #RegionSales (Region, Distributor, Sales) VALUES
('North','ACE',10),
('South','ACE',67),
('East','ACE',54),
('North','ACME',65),
('South','ACME',9),
('East','ACME',1),
('West','ACME',7),
('North','Direct Parts',8),
('South','Direct Parts',7),
('West','Direct Parts',12);
GO
```

**Expected Output:**

| Region | Distributor   | Sales |
|--------|---------------|-------|
| North  | ACE           | 10    |
| South  | ACE           | 67    |
| East   | ACE           | 54    |
| West   | ACE           | 0     |
| North  | Direct Parts  | 8     |
| South  | Direct Parts  | 7     |
| East   | Direct Parts  | 0     |
| West   | Direct Parts  | 12    |
| North  | ACME          | 65    |
| South  | ACME          | 9     |
| East   | ACME          | 1     |
| West   | ACME          | 7     |

---

## Task 3: Managers With At Least 5 Reports

**Input Table: `Employee`**

```sql
CREATE TABLE Employee (
  id INT,
  name VARCHAR(255),
  department VARCHAR(255),
  managerId INT
);
TRUNCATE TABLE Employee;
INSERT INTO Employee VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);
```

**Expected Output:**

| name |
|------|
| John |

🔗 [Leetcode Problem](https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/)

---

## Task 4: Products Ordered in February 2020 (>= 100 units)

**Tables: `Products`, `Orders`**

```sql
CREATE TABLE Products (
  product_id INT,
  product_name VARCHAR(40),
  product_category VARCHAR(40)
);
CREATE TABLE Orders (
  product_id INT,
  order_date DATE,
  unit INT
);
TRUNCATE TABLE Products;
INSERT INTO Products VALUES
(1, 'Leetcode Solutions', 'Book'),
(2, 'Jewels of Stringology', 'Book'),
(3, 'HP', 'Laptop'),
(4, 'Lenovo', 'Laptop'),
(5, 'Leetcode Kit', 'T-shirt');
TRUNCATE TABLE Orders;
INSERT INTO Orders VALUES
(1, '2020-02-05', 60),
(1, '2020-02-10', 70),
(2, '2020-01-18', 30),
(2, '2020-02-11', 80),
(3, '2020-02-17', 2),
(3, '2020-02-24', 3),
(4, '2020-03-01', 20),
(4, '2020-03-04', 30),
(4, '2020-03-04', 60),
(5, '2020-02-25', 50),
(5, '2020-02-27', 50),
(5, '2020-03-01', 50);
```

**Expected Output:**

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

🔗 [Leetcode Problem](https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/)

---

## Task 5: Most Frequent Vendor Per Customer

**Table: `Orders`**

```sql
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
  OrderID     INT PRIMARY KEY,
  CustomerID  INT NOT NULL,
  [Count]     MONEY NOT NULL,
  Vendor      VARCHAR(100) NOT NULL
);
INSERT INTO Orders VALUES
(1, 1001, 12, 'Direct Parts'),
(2, 1001, 54, 'Direct Parts'),
(3, 1001, 32, 'ACME'),
(4, 2002, 7, 'ACME'),
(5, 2002, 16, 'ACME'),
(6, 2002, 5, 'Direct Parts');
```

**Expected Output:**

| CustomerID | Vendor       |
|------------|--------------|
| 1001       | Direct Parts |
| 2002       | ACME         |

---

## Task 6: Prime Number Check Using WHILE

```sql
DECLARE @Check_Prime INT = 91
-- Continue from here using a WHILE loop to check if it's a prime number
```

**Expected Output (if prime):**  
`This number is prime`  
**Else:**  
`This number is not prime`

---

## Task 7: Signals per Device

**Input Table: `Device`**

```sql
CREATE TABLE Device (
  Device_id INT,
  Locations VARCHAR(25)
);
INSERT INTO Device VALUES
(12, 'Bangalore'),
(12, 'Bangalore'),
(12, 'Bangalore'),
(12, 'Bangalore'),
(12, 'Hosur'),
(12, 'Hosur'),
(13, 'Hyderabad'),
(13, 'Hyderabad'),
(13, 'Secunderabad'),
(13, 'Secunderabad'),
(13, 'Secunderabad');
```

**Expected Output:**

| Device_id | no_of_location | max_signal_location | no_of_signals |
|-----------|----------------|---------------------|----------------|
| 12        | 2              | Bangalore           | 6              |
| 13        | 2              | Secunderabad        | 5              |

---

## Task 8: Employees Earning Above Department Average

**Input Table: `Employee`**

```sql
CREATE TABLE Employee (
  EmpID INT,
  EmpName VARCHAR(30),
  Salary FLOAT,
  DeptID INT
);
INSERT INTO Employee VALUES
(1001, 'Mark', 60000, 2),
(1002, 'Antony', 40000, 2),
(1003, 'Andrew', 15000, 1),
(1004, 'Peter', 35000, 1),
(1005, 'John', 55000, 1),
(1006, 'Albert', 25000, 3),
(1007, 'Donald', 35000, 3);
```

**Expected Output:**

| EmpID | EmpName | Salary |
|-------|---------|--------|
| 1001  | Mark    | 60000  |
| 1005  | John    | 55000  |
| 1007  | Donald  | 35000  |

---

## Task 9: Office Lottery Winnings

**Tables: `WinningNumbers`, `Tickets`**
**9. You are part of an office lottery pool where you keep a table of the winning lottery numbers along with 
a table of each ticket’s chosen numbers.  If a ticket has some but not all the winning numbers, you win 
$10.  If a ticket has all the winning numbers, you win $100.    Calculate the total winnings for today’s 
drawing.**

```sql
-- Winning Numbers
CREATE TABLE WinningNumbers (Number INT);
INSERT INTO WinningNumbers VALUES (25), (45), (78);

-- Tickets
CREATE TABLE Tickets (TicketID VARCHAR(10), Number INT);
INSERT INTO Tickets VALUES
('A23423', 25),
('A23423', 45),
('A23423', 78),
('B35643', 25),
('B35643', 45),
('B35643', 98),
('C98787', 67),
('C98787', 86),
('C98787', 91);
```

**Expected Output:**
```
Total Winning = $110
```

---

## Task 10: Spending by Platform per Date

**Input Table: `Spending`**

```sql
CREATE TABLE Spending (
  User_id INT,
  Spend_date DATE,
  Platform VARCHAR(10),
  Amount INT
);
INSERT INTO Spending VALUES
(1,'2019-07-01','Mobile',100),
(1,'2019-07-01','Desktop',100),
(2,'2019-07-01','Mobile',100),
(2,'2019-07-02','Mobile',100),
(3,'2019-07-01','Desktop',100),
(3,'2019-07-02','Desktop',100);
```

**Expected Output:**

| Row | Spend_date | Platform | Total_Amount | Total_users |
|-----|------------|----------|--------------|-------------|
| 1   | 2019-07-01 | Mobile   | 100          | 1           |
| 2   | 2019-07-01 | Desktop  | 100          | 1           |
| 3   | 2019-07-01 | Both     | 200          | 1           |
| 4   | 2019-07-02 | Mobile   | 100          | 1           |
| 5   | 2019-07-02 | Desktop  | 100          | 1           |
| 6   | 2019-07-02 | Both     | 0            | 0           |

---
