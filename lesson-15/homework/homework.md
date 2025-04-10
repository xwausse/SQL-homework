Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. Students are scored based on what their query returns(does it fulfill the requirments). One way of solution is enough if it is true, other ways might be suggested but should not affect the score.


Easy Tasks

1.Given two tables Cart1 and Cart2, write an SQL query to show matching and non-matching items side by side.

2.Write an SQL statement to determine the average number of days between executions for each workflow.(ProcessLog)

3.Write a query which will gets the movie details where Mr. Amitabh and Mr. Vinod acted together and their role is actor.(Movie)

4.Write an SQL query to pivot the data so that each customer's phone numbers appear in separate columns.(PhoneDirectory)

5.Write an SQL query to find all numbers up to a given number n that are divisible by 9.

6.Write an SQL query to return each batch with its corresponding start line and the line where it ends (i.e., the line containing GO)(BatchStarts,BatchLines)

7.Write an SQL statement that will provide a running balance of the inventory(Inventory)

8.Write a query which will find the Nth highest salary from the table. In this case we are finding 2nd Highest Salary.(NthHighest)

9.Write an SQL statement that shows the current year’s sales, along with the previous year’s sales, and the sales from two years ago.(Sales)


Medium Tasks

1.Write an SQL statement to determine which boxes have the same dimensions.(Boxes)

2.Create a numbers table where you start with the number 1, and then double the number if the result isless than 100, else add 1.

3.You are given a list of workflows with different statuses. For each record, you need to determine the number of unique statuses that occurred prior to and including the current status.(WorkflowSteps)

4.In this puzzle we have print male and female alternate from the AlternateMaleFemale table

5.Given a Steps table with Step_Number and Status, write a SQL query to group consecutive rows with the same Status and return the min and max step numbers, the status, and the count of consecutive steps..(Groupings)

6.Create a result set of all permutations for the combination of 0 and 1 with a length of n digits

7.You are given the following table of individuals and their spouse. Every individual exists both as a Primary ID and a Spouse ID. You need to create a group criteria key to match the associated records.(Spouses)

8.Write a query which will extract the previous value from the currentQuota for each row.(lag)

9.Determine which bowlers consistently place next to each other in your local bowling league.(BowlingResults)

10.Write an SQL query to find all the prime numbers up to 100


Difficult Tasks

1.Create a result set of all permutations for the combination of 0 and 1 with a length of n digits.

2.Players that rank in the top half must be given a value of 1, and the remaining players must be given a value of 2.(PlayerScores)

3.Given a table of SQL statements, write a query to break each statement into words and return their positions, including quote ID, word, start and end positions.(Strings)

4.Create a numbers table of all permutations of n distinct numbers.

5.Write an SQL query to find all the 3-perfect numbers.










/*
CREATE TABLE #Cart1
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

CREATE TABLE #Cart2
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

INSERT INTO #Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO

INSERT INTO #Cart2 (Item) VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO
CREATE TABLE #
(
CustomerID   INTEGER,
[Type]       VARCHAR(100),
PhoneNumber  VARCHAR(12) NOT NULL,
PRIMARY KEY (CustomerID, [Type])
);
GO

INSERT INTO #PhoneDirectory (CustomerID, [Type], PhoneNumber) VALUES
(1001,'Cellular','555-897-5421'),
(1001,'Work','555-897-6542'),
(1001,'Home','555-698-9874'),
(2002,'Cellular','555-963-6544'),
(2002,'Work','555-812-9856'),
(3003,'Cellular','555-987-6541');
GO

CREATE TABLE #ProcessLog
(
WorkFlow       VARCHAR(100),
ExecutionDate  DATE,
PRIMARY KEY (WorkFlow, ExecutionDate)
);
GO

INSERT INTO #ProcessLog (WorkFlow, ExecutionDate) VALUES
('Alpha','6/01/2018'),('Alpha','6/14/2018'),('Alpha','6/15/2018'),
('Bravo','6/1/2018'),('Bravo','6/2/2018'),('Bravo','6/19/2018'),
('Charlie','6/1/2018'),('Charlie','6/15/2018'),('Charlie','6/30/2018');
GO

CREATE TABLE #Inventory
(
InventoryDate       DATE PRIMARY KEY,
QuantityAdjustment  INTEGER NOT NULL
);
GO

INSERT INTO #Inventory (InventoryDate, QuantityAdjustment) VALUES
('7/1/2018',100),('7/2/2018',75),('7/3/2018',-150),
('7/4/2018',50),('7/5/2018',-75);
GO

CREATE TABLE #PlayerScores
(
PlayerA  INTEGER,
PlayerB  INTEGER,
Score    INTEGER NOT NULL,
PRIMARY KEY (PlayerA, PlayerB)
);
GO

INSERT INTO #PlayerScores (PlayerA, PlayerB, Score) VALUES
(1001,2002,150),(3003,4004,15),(4004,3003,125);
GO

CREATE TABLE #BatchStarts
(
Batch       CHAR(1),
BatchStart  INTEGER,
PRIMARY KEY (Batch, BatchStart)
);
GO

CREATE TABLE #BatchLines
(
Batch   CHAR(1),
Line    INTEGER,
Syntax  VARCHAR(MAX),
PRIMARY KEY (Batch, Line)
);
GO

INSERT INTO #BatchStarts (Batch, BatchStart) VALUES
('A', 1),
('A', 5);
GO

INSERT INTO #BatchLines (Batch, Line, Syntax) VALUES
('A', 1, 'SELECT *'),
('A', 2, 'FROM Account;'),
('A', 3, 'GO'),
('A', 4, ''),
('A', 5, 'TRUNCATE TABLE Accounts;'),
('A', 6, 'GO');
GO

CREATE TABLE #Sales
(
[Year]  INTEGER NOT NULL,
Amount  INTEGER NOT NULL
);
GO

INSERT INTO #Sales ([Year], Amount) VALUES
(YEAR(GETDATE()),352645),
(YEAR(DATEADD(YEAR,-1,GETDATE())),165565),
(YEAR(DATEADD(YEAR,-1,GETDATE())),254654),
(YEAR(DATEADD(YEAR,-2,GETDATE())),159521),
(YEAR(DATEADD(YEAR,-2,GETDATE())),251696),
(YEAR(DATEADD(YEAR,-3,GETDATE())),111894);
GO

CREATE TABLE #Groupings
(
StepNumber  INTEGER PRIMARY KEY,
TestCase    VARCHAR(100) NOT NULL,
[Status]    VARCHAR(100) NOT NULL
);
GO

INSERT INTO #Groupings (StepNumber, TestCase, [Status]) VALUES
(1,'Test Case 1','Passed'),
(2,'Test Case 2','Passed'),
(3,'Test Case 3','Passed'),
(4,'Test Case 4','Passed'),
(5,'Test Case 5','Failed'),
(6,'Test Case 6','Failed'),
(7,'Test Case 7','Failed'),
(8,'Test Case 8','Failed'),
(9,'Test Case 9','Failed'),
(10,'Test Case 10','Passed'),
(11,'Test Case 11','Passed'),
(12,'Test Case 12','Passed');
GO

CREATE TABLE #Spouses
(
PrimaryID  VARCHAR(100),
SpouseID   VARCHAR(100),
PRIMARY KEY (PrimaryID, SpouseID)
);
GO

INSERT INTO #Spouses (PrimaryID, SpouseID) VALUES
('Pat','Charlie'),('Jordan','Casey'),
('Ashley','Dee'),('Charlie','Pat'),
('Casey','Jordan'),('Dee','Ashley');
GO

CREATE TABLE #Strings
(
QuoteId  INTEGER IDENTITY(1,1) PRIMARY KEY,
String   VARCHAR(100) NOT NULL
);
GO

INSERT INTO #Strings (String) VALUES
('SELECT EmpID FROM Employees;'),('SELECT * FROM Transactions;');
GO

CREATE TABLE #WorkflowSteps
(
StepID    INTEGER PRIMARY KEY,
Workflow  VARCHAR(50),
[Status]  VARCHAR(50)
);
GO

INSERT INTO #WorkflowSteps (StepID, Workflow, [Status]) VALUES
(1, 'Alpha', 'Open'),
(2, 'Alpha', 'Open'),
(3, 'Alpha', 'Inactive'),
(4, 'Alpha', 'Open'),
(5, 'Bravo', 'Closed'),
(6, 'Bravo', 'Closed'),
(7, 'Bravo', 'Open'),
(8, 'Bravo', 'Inactive');
GO

CREATE TABLE #BowlingResults 
(
GameID  INTEGER,
Bowler  VARCHAR(50),
Score   INTEGER,
PRIMARY KEY (GameID, Bowler)
);
GO

INSERT INTO #BowlingResults (GameID, Bowler, Score) VALUES
(1, 'John', 167),
(1, 'Susan', 139),
(1, 'Ralph', 95),
(1, 'Mary', 90),
(2, 'Susan', 187),
(2, 'John', 155),
(2, 'Dennis', 100),
(2, 'Anthony', 78);
GO

CREATE TABLE #Boxes 
(
Box      CHAR(1),
[Length] INTEGER,
Width    INTEGER,
Height   INTEGER
);
GO

INSERT INTO #Boxes (Box, [Length], Width, Height) VALUES
('A', 10, 25, 15),
('B', 15, 10, 25),
('C', 10, 15, 25),
('D', 20, 30, 30),
('E', 30, 30, 20);
GO

CREATE TABLE lag
(
BusinessEntityID INT
,SalesYear   INT
,CurrentQuota  DECIMAL(20,4)
)
GO
 
INSERT INTO lag
SELECT 275 , 2005 , '367000.00'
UNION ALL
SELECT 275 , 2005 , '556000.00'
UNION ALL
SELECT 275 , 2006 , '502000.00'
UNION ALL
SELECT 275 , 2006 , '550000.00'
UNION ALL
SELECT 275 , 2006 , '1429000.00'
UNION ALL
SELECT 275 , 2006 ,  '1324000.00'

-Create a sample movie table
CREATE TABLE [Movie]
(
 
[MName] [varchar] (10) NULL,
[AName] [varchar] (10) NULL,
[Roles] [varchar] (10) NULL
)
 
GO
 
--Insert data in the table
 
INSERT INTO Movie(MName,AName,Roles)
SELECT 'A','Amitabh','Actor'
UNION ALL
SELECT 'A','Vinod','Villan'
UNION ALL
SELECT 'B','Amitabh','Actor'
UNION ALL
SELECT 'B','Vinod','Actor'
UNION ALL
SELECT 'D','Amitabh','Actor'
UNION ALL
SELECT 'E','Vinod','Actor'

CREATE TABLE NthHighest
(
 Name  varchar(5)  NOT NULL,
 Salary  int  NOT NULL
)
 
--Insert the values
INSERT INTO  NthHighest(Name, Salary)
VALUES
('e5', 45000),
('e3', 30000),
('e2', 49000),
('e4', 36600),
('e1', 58000)

CREATE TABLE dbo.AlternateMaleFemale
(
ID INT
,NAME VARCHAR(10)
,GENDER VARCHAR(1)
)
GO
 
--Insert data
INSERT INTO dbo.AlternateMaleFemale(ID,NAME,GENDER)
VALUES
(1,'Neeraj','M'),
(2,'Mayank','M'),
(3,'Pawan','M'),
(4,'Gopal','M'),
(5,'Sandeep','M'),
(6,'Isha','F'),
(7,'Sugandha','F'),
(8,'kritika','F')
