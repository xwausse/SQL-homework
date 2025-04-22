
# Lesson 22: Aggregated Window Functions

## 🔹 10 Easy Questions

1. **Compute Running Total Sales per Customer**
2. **Count the Number of Orders per Product Category**
3. **Find the Maximum Total Amount per Product Category**
4. **Find the Minimum Price of Products per Product Category**
5. **Compute the Moving Average of Sales of 3 days (prev day, curr day, next day)**
6. **Find the Total Sales per Region**
7. **Compute the Rank of Customers Based on Their Total Purchase Amount**
8. **Calculate the Difference Between Current and Previous Sale Amount per Customer**
9. **Find the Top 3 Most Expensive Products in Each Category**
10. **Compute the Cumulative Sum of Sales Per Region by Order Date**

---

## 🔸 10 Medium Questions

11. **Compute Cumulative Revenue per Product Category**

12. **Sum of Previous Values (Running Total Example)**

**Input:**

```
| ID |
|----|
|  1 |
|  2 |
|  3 |
|  4 |
|  5 |
```

**Expected Output:**

```
| ID | SumPreValues |
|----|--------------|
|  1 |            1 |
|  2 |            3 |
|  3 |            6 |
|  4 |           10 |
|  5 |           15 |
```

13. **Sum of Previous Value to Current Value Puzzle**

```sql
CREATE TABLE OneColumn (Value SMALLINT);
INSERT INTO OneColumn VALUES (10), (20), (30), (40), (100);
```

**Expected Output:**

```
| Value | Sum of Previous |
|-------|-----------------|
|    10 |              10 |
|    20 |              30 |
|    30 |              50 |
|    40 |              70 |
|   100 |             140 |
```

14. **Odd Row Numbering Per Partition**

```sql
CREATE TABLE Row_Nums (Id INT, Vals VARCHAR(10));
-- Inserting sample values
```

**Expected Output:**

```
| Id  | Vals | RowNumber |
|-----|------|-----------|
| 101 | a    |         1 |
| 102 | b    |         3 |
| 102 | c    |         4 |
...
```

15. **Find customers who purchased from more than one product category**  
16. **Find Customers with Above-Average Spending in Their Region**  
17. **Dense Rank Customers by Total Spending per Region**  
18. **Running Total of Total Amount by Customer and Order Date**  
19. **Sales Growth Rate for Each Month Compared to Previous Month**  
20. **Customers with Higher Current Total Amount than Their Previous Order**  

---

## 🔺 5 Hard Questions

21. **Products Priced Above Average**  
22. **Sum of val1 and val2 for Each Group at Start Row Only**

```sql
CREATE TABLE MyData (Id INT, Grp INT, Val1 INT, Val2 INT);
-- Insert sample values
```

**Expected Output:**

```
| Id | Grp | Val1 | Val2 | Tot  |
|----|-----|------|------|------|
|  1 |   1 |   30 |   29 |  134 |
|  2 |   1 |   19 |    0 | NULL |
...
```

23. **Sum Cost and Quantity (with merging logic)**  
24. **Sum TyZe per 'Z' Row with Logic Column**  
25. **Even Row Number Start Per Partition**  

---

## 📊 Sample Table

### `sales_data` Table Definition

```sql
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    order_date DATE,
    region VARCHAR(50)
);
```

### Sample Data (Partial View)

```sql
INSERT INTO sales_data VALUES
(1, 101, 'Alice', 'Electronics', 'Laptop', 1, 1200.00, 1200.00, '2024-01-01', 'North'),
(2, 102, 'Bob', 'Electronics', 'Phone', 2, 600.00, 1200.00, '2024-01-02', 'South'),
...
(25, 115, 'Oscar', 'Furniture', 'Wardrobe', 1, 1000.00, 1000.00, '2024-01-25', 'East');
```
