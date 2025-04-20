#Lesson-16: Practice

Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. Students are scored based on what their query returns(does it fulfill the requirments). One way of solution is enough if it is true, other ways might be suggested but should not affect the score.


1. Write an SQL Statement to de-group the following data.

---------------------

|Product  |Quantity|

---------------------

|Pencil    |  3  |

|Eraser    |  4  |

|Notebook  |  2  |

---------------------

Expected Output:

---------------------

|Product  |Quantity|

---------------------

|Pencil    |  1  |

|Pencil    |  1  |

|Pencil    |  1  |

|Eraser    |  1  |

|Eraser    |  1  |

|Eraser    |  1  |

|Eraser    |  1  |

|Notebook  |  1  |

|Notebook  |  1  |

---------------------


DROP TABLE IF EXISTS Grouped;
CREATE TABLE Grouped
(
Product  VARCHAR(100) PRIMARY KEY,
Quantity            INTEGER NOT NULL
);
INSERT INTO Grouped (Product, Quantity) VALUES
('Pencil',3),('Eraser',4),('Notebook',2);

2. You must provide a report of all distributors and their sales by region.  If a distributor did not have any 
sales for a region, provide a zero-dollar value for that day.  Assume there is at least one sale for each 
region

DROP TABLE IF EXISTS #RegionSales;
GO

CREATE TABLE #RegionSales
(
Region       VARCHAR(100),
Distributor  VARCHAR(100),
Sales        INTEGER NOT NULL,
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

select * from #RegionSales

---------------------------------------
|Region       |Distributor    | Sales |
---------------------------------------
|North        |ACE            |   10  |
|South        |ACE            |   67  |
|East         |ACE            |   54  |
|North        |Direct Parts   |   8    |
|South        |Direct Parts   |   7    |
|West         |Direct Parts   |   12  |
|North        |ACME           |   65  |
|South        |ACME           |   9    |
|East         |ACME           |   1    |
|West         |ACME           |   7    |
----------------------------------------

Here is the Expected output.
---------------------------------------
|Region       |Distributor    | Sales |
---------------------------------------
|North        |ACE            |   10  |
|South        |ACE            |   67  |
|East         |ACE            |   54  |
|West      |ACE        |   0   |
|North        |Direct Parts   |   8    |
|South        |Direct Parts   |   7    |
|East      |Direct Parts   |   0   |
|West         |Direct Parts   |   12  |
|North        |ACME           |   65  |
|South        |ACME           |   9    |
|East         |ACME           |   1    |
|West         |ACME           |   7    |
----------------------------------------

3. Write a solution to find managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example.

Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+

Create table Employee (id int, name varchar(255), department varchar(255), managerId int)
Truncate table Employee
insert into Employee (id, name, department, managerId) values ('101', 'John', 'A', NULL)
insert into Employee (id, name, department, managerId) values ('102', 'Dan', 'A', '101')
insert into Employee (id, name, department, managerId) values ('103', 'James', 'A', '101')
insert into Employee (id, name, department, managerId) values ('104', 'Amy', 'A', '101')
insert into Employee (id, name, department, managerId) values ('105', 'Anne', 'A', '101')
insert into Employee (id, name, department, managerId) values ('106', 'Ron', 'B', '101')

You cal also solve this puzzle in Leetcode: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50

4. Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

Return the result table in any order.

The result format is in the following example.

Input:
Products table:
+-------------+-----------------------+------------------+
| product_id  | product_name          | product_category |
+-------------+-----------------------+------------------+
| 1           | Leetcode Solutions    | Book             |
| 2           | Jewels of Stringology | Book             |
| 3           | HP                    | Laptop           |
| 4           | Lenovo                | Laptop           |
| 5           | Leetcode Kit          | T-shirt          |
+-------------+-----------------------+------------------+
Orders table:
+--------------+--------------+----------+
| product_id   | order_date   | unit     |
+--------------+--------------+----------+
| 1            | 2020-02-05   | 60       |
| 1            | 2020-02-10   | 70       |
| 2            | 2020-01-18   | 30       |
| 2            | 2020-02-11   | 80       |
| 3            | 2020-02-17   | 2        |
| 3            | 2020-02-24   | 3        |
| 4            | 2020-03-01   | 20       |
| 4            | 2020-03-04   | 30       |
| 4            | 2020-03-04   | 60       |
| 5            | 2020-02-25   | 50       |
| 5            | 2020-02-27   | 50       |
| 5            | 2020-03-01   | 50       |
+--------------+--------------+----------+
Output: 
+--------------------+---------+
| product_name       | unit    |
+--------------------+---------+
| Leetcode Solutions | 130     |
| Leetcode Kit       | 100     |
+--------------------+---------+

Create table Products (product_id int, product_name varchar(40), product_category varchar(40))
Create table Orders (product_id int, order_date date, unit int)
Truncate table Products
insert into Products (product_id, product_name, product_category) values ('1', 'Leetcode Solutions', 'Book')
insert into Products (product_id, product_name, product_category) values ('2', 'Jewels of Stringology', 'Book')
insert into Products (product_id, product_name, product_category) values ('3', 'HP', 'Laptop')
insert into Products (product_id, product_name, product_category) values ('4', 'Lenovo', 'Laptop')
insert into Products (product_id, product_name, product_category) values ('5', 'Leetcode Kit', 'T-shirt')
Truncate table Orders
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-05', '60')
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-10', '70')
insert into Orders (product_id, order_date, unit) values ('2', '2020-01-18', '30')
insert into Orders (product_id, order_date, unit) values ('2', '2020-02-11', '80')
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-17', '2')
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-24', '3')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-01', '20')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '30')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '60')
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-25', '50')
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-27', '50')
insert into Orders (product_id, order_date, unit) values ('5', '2020-03-01', '50')

You cal also solve this puzzle in Leetcode: https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

5. Write an SQL statement that returns the vendor from which each customer has placed the most orders

-----------------------------------------------------------------
|Order ID  |  Customer ID  |   Order Count  |  Vendor    |
-----------------------------------------------------------------
|Ord195342  |     1001    |      12    |  Direct Parts|
|Ord245532  |     1001    |      54    |  Direct Parts|
|Ord344394  |     1001    |      32    |     ACME    |
|Ord442423  |     2002    |      7      |     ACME    |
|Ord524232  |     2002    |      16    |     ACME    |
|Ord645363  |     2002    |      5      |  Direct Parts|
-----------------------------------------------------------------

Here is the expected output

------------------------------
|Customer ID  |Vendor     |
------------------------------
|     1001      |Direct Parts|
|     2002      |   ACME   |
------------------------------

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(
OrderID     INTEGER PRIMARY KEY,
CustomerID  INTEGER NOT NULL,
[Count]     MONEY NOT NULL,
Vendor      VARCHAR(100) NOT NULL
);

INSERT INTO Orders (OrderID, CustomerID, [Count], Vendor) VALUES
(1,1001,12,'Direct Parts'),
(2,1001,54,'Direct Parts'),
(3,1001,32,'ACME'),
(4,2002,7,'ACME'),
(5,2002,16,'ACME'),
(6,2002,5,'Direct Parts');

6. You will be given a number as a variable called @Check_Prime

check if this number is prime then return 'This number is prime' 
else return 'This number is not prime'

Continue Your code below the 4th line

Declare @Check_Prime int = 91
...

(Use while)

7. Write an SQL query to return the number of locations,in which location most signals sent, and total number of signal for each device from the given table.

Expected Output
--------------------------------------------------------------------
| Device_id | no_of_location | max_signal_location | no_of_signals  |  
|-----------|----------------|---------------------|----------------|  
| 12        | 2              | Bangalore           | 6              |  
| 13        | 2              | Secunderabad        | 5              |
---------------------------------------------------------------------

Create Table Device(
Device_id int,
Locations Varchar(25)
)

Insert into Device (Device_id,Locations) values
(12,'Bangalore'), 
(12,'Bangalore'),
(12,'Bangalore'), 
(12,'Bangalore'),
(12,'Hosur'),
(12,'Hosur'),
(13,'Hyderabad'), 
(13,'Hyderabad'), 
(13, 'Secunderabad'), 
(13, 'Secunderabad'), 
(13, 'Secunderabad')

8. Write a SQL  to find all Employees who earn more than the average salary in their corresponding department.
Return EmpID, EmpName,Salary in your output

CREATE Table Employee
(
EmpID INT,
EmpName Varchar(30),
Salary Float,
DeptID INT
)

INSERT INTO Employee VALUES(1001,'Mark',60000,2)
INSERT INTO Employee VALUES(1002,'Antony',40000,2)
INSERT INTO Employee VALUES(1003,'Andrew',15000,1)
INSERT INTO Employee VALUES(1004,'Peter',35000,1)
INSERT INTO Employee VALUES(1005,'John',55000,1)
INSERT INTO Employee VALUES(1006,'Albert',25000,3)
INSERT INTO Employee VALUES(1007,'Donald',35000,3)

9. You are part of an office lottery pool where you keep a table of the winning lottery numbers along with 
a table of each ticket’s chosen numbers.  If a ticket has some but not all the winning numbers, you win 
$10.  If a ticket has all the winning numbers, you win $100.    Calculate the total winnings for today’s 
drawing.

Winning Numbers 
---------
|Number |
---------
|  25  |
|  45  |
|  78  |
---------

Tickets
---------------------
|Ticket ID  |Number |
---------------------
|A23423    |  25  |
|A23423    |  45  |
|A23423    |  78  |
|B35643    |  25  |
|B35643    |  45  |
|B35643   |  98  |
|C98787    |  67  |
|C98787   |  86  |
|C98787    |  91  |
---------------------

The expected output would be $110, as you have one winning ticket, and one ticket that has some but 
not all the winning numbers.

10. The Spending table keeps the logs of the spendings history of users that make purchases from an online shopping website which has a desktop and a mobile devices.
Write an SQL query to find the total number of users and the total amount spent using mobile only, desktop only and both mobile and desktop together for each date.

Expected Output
------------------------------------------------------------
| Row | Spend_date | Platform | Total_Amount | Total_users |  
|-----|------------|----------|--------------|-------------|  
| 1   | 2019-07-01 | Mobile   | 100          | 1           |  
| 2   | 2019-07-01 | Desktop  | 100          | 1           |  
| 3   | 2019-07-01 | Both     | 200          | 1           |  
| 4   | 2019-07-02 | Mobile   | 100          | 1           |  
| 5   | 2019-07-02 | Desktop  | 100          | 1           |  
| 6   | 2019-07-02 | Both     | 0            | 0           |
------------------------------------------------------------

create table Spending 
(
User_id int,
Spend_date date,
Platform varchar(10),
Amount int
);

Insert into spending values(1,'2019-07-01','Mobile',100);
Insert into spending values(1,'2019-07-01','Desktop',100);
Insert into spending values(2,'2019-07-01','Mobile',100);
Insert into spending values(2,'2019-07-02','Mobile',100);
Insert into spending values(3,'2019-07-01','Desktop',100);
Insert into spending values(3,'2019-07-02','Desktop',100);
