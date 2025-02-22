## Puzzle 1: Finding Distinct Values
Question: Explain at least two ways to find distinct values based on two columns.

Kirish ma’lumotlari (`InputTbl`):

| col1 | col2 |
|------|------|
| a    | b    |
| a    | b    |
| b    | a    |
| c    | d    |
| c    | d    |
| m    | n    |
| n    | m    |

Chiqish natijasi (`OutputTbl`):

| col1 | col2 |
|------|------|
| a    | b    |
| c    | d    |
| m    | n    |

---

## Puzzle 2: Counting 'a' for Different Types
Question: Count occurrences of 'a' in columns Value1, Value2, and Value3 for different `Typ`s.

### Table Schema:
CREATE TABLE GroupbyMultipleColumns (
    ID INT,
    Typ VARCHAR(1),
    Value1 VARCHAR(1),
    Value2 VARCHAR(1),
    Value3 VARCHAR(1)
);

### Sample Data:
INSERT INTO GroupbyMultipleColumns(ID, Typ, Value1, Value2, Value3)
VALUES
    (1, 'I', 'a', 'b', ''),
    (2, 'O', 'a', 'd', 'f'),
    (3, 'I', 'd', 'b', ''),
    (4, 'O', 'g', 'l', ''),
    (5, 'I', 'z', 'g', 'a'),
    (6, 'I', 'z', 'g', 'a');

Expected Output:
| Typ | Counts |
|-----|--------|
| I   | 3      |
| O   | 1      |

---

## Puzzle 3: Removing Rows with All Zeroes
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.

### Table Schema:
CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

### Sample Data:
INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

---

## Puzzle 4: Finding Duplicate Values
Question: Find values that appear more than once in the table.

### Table Schema:
CREATE TABLE TESTDuplicateCount (
    ID INT,
    EmpName VARCHAR(100),
    EmpDate DATETIME
);

### Sample Data:
INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) 
VALUES
    (1,'Pawan','2014-01-05'),
    (2,'Pawan','2014-03-05'), 
    (3,'Pawan','2014-02-05'), 
    (4,'Manisha','2014-07-05'), 
    (5,'Sharlee','2014-09-05'), 
    (6,'Barry','2014-02-05'), 
    (7,'Jyoti','2014-04-05'), 
    (8,'Jyoti','2014-05-05');

---

## Puzzle 5: Counting Fruits per Person
Question: Count the occurrences of each fruit per person.

### Table Schema:
CREATE TABLE FruitCount (
    Name VARCHAR(20),
    Fruit VARCHAR(25)
);

### Sample Data:
INSERT INTO FruitCount(Name, Fruit) 
VALUES
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'APPLE'),
    ('Neeraj', 'ORANGE'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Isha', 'MANGO'),
    ('Isha', 'MANGO'),
    ('Isha', 'APPLE'),
    ('Isha', 'ORANGE'),
    ('Isha', 'LICHI'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'ORANGE'),
    ('Gopal', 'LICHI'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'ORANGE'),
    ('Mayank', 'LICHI');

Expected Output:
| Name  | MangoCount | APPLECount | LICHICount | ORANGECount |
|-------|-----------|------------|------------|-------------|
| Gopal | 2         | 3          | 1          | 1           |
| Isha  | 2         | 1          | 1          | 1           |
| Mayank| 2         | 2          | 1          | 1           |
| Neeraj| 3         | 1          | 3          | 1           |

---
