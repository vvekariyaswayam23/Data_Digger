# 🗄️ Data Digger — SQL Database Project

<p align="center">
  <img src="https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Database-Data%20Digger-orange?style=for-the-badge" alt="Data Digger">
  <img src="https://img.shields.io/badge/Level-Beginner-success?style=for-the-badge" alt="Beginner">
</p>

## 📌 About The Project

**Data Digger** is a beginner-friendly MySQL database project.

This project demonstrates how to create a database and work with multiple related tables.

The project uses **Customers**, **Orders**, **Products**, and **OrderDetails** tables.

It includes basic SQL operations such as **CREATE**, **INSERT**, **SELECT**, **UPDATE**, **DELETE**, **WHERE**, **ORDER BY**, **BETWEEN**, aggregate functions, subqueries, grouping, and foreign keys.

The complete SQL source is available in [`datadigger.sql`](./datadigger.sql). citeturn0search0

---

## 🎯 Project Objectives

- 🏗️ Create a MySQL database
- 👤 Manage customer records
- 🛒 Store product information
- 📦 Manage customer orders
- 🔗 Create relationships using foreign keys
- 📊 Retrieve and analyze database records
- ✏️ Update existing records
- 🗑️ Delete records
- 📈 Calculate highest, lowest, and average order amounts
- 💰 Calculate total revenue
- 🏆 Find the top 3 most ordered products

---

## 🗂️ Database Structure

### 👤 Customers Table

Stores customer information.

- `CustomerID`
- `Name`
- `Email`
- `Address`

The table uses `CustomerID` as the **Primary Key**. fileciteturn0file0L6-L12

### 🧾 Order Table

Stores customer order information.

- `OrderID`
- `CustomerID`
- `OrderDate`
- `TotalAmount`

`CustomerID` is connected to the `Customers` table using a **Foreign Key**. fileciteturn0file0L50-L58

### 🛍️ Product Table

Stores product details.

- `ProductID`
- `ProductName`
- `Price`
- `Stock`

`ProductID` is used as the **Primary Key**. fileciteturn0file0L99-L104

### 📦 OrderDetails Table

Stores products included in each order.

- `OrderDetailID`
- `OrderID`
- `ProductID`
- `Quantity`
- `SubTotal`

It connects orders and products using foreign keys. fileciteturn0file0L149-L161

---

## ⚙️ SQL Operations Used

### 🏗️ Database Creation

```sql
CREATE DATABASE DataDigger;
USE DataDigger;
```

### 👤 Customer Operations

```sql
SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Bangluru'
WHERE CustomerID = 3;

DELETE FROM Customers
WHERE CustomerID = 10;

SELECT * FROM Customers
WHERE Name = 'Alice';
```

These operations are included in the SQL project for retrieving, updating, deleting, and filtering customer data. fileciteturn0file0L34-L45

### 📦 Order Operations

```sql
SELECT * FROM orderd
WHERE CustomerID = 3;

UPDATE orderd
SET TotalAmount = 2800
WHERE OrderID = 101;

DELETE FROM orderd
WHERE OrderID = 105;
```

The project also retrieves recent orders and uses aggregate functions for order analysis. fileciteturn0file0L78-L95

### 🛒 Product Operations

```sql
SELECT * FROM product;

SELECT * FROM product
ORDER BY Price DESC;

UPDATE product
SET Price = 60000
WHERE ProductID = 1;

SELECT * FROM product
WHERE Price BETWEEN 500 AND 2000;
```

The project also finds the most expensive and cheapest products using `MAX()` and `MIN()` subqueries. fileciteturn0file0L125-L145

### 📊 OrderDetails Analysis

```sql
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

SELECT ProductID,
       SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;
```

The project uses `SUM()` and `GROUP BY` to analyze revenue and product quantities. fileciteturn0file0L182-L196

---

## 🔑 SQL Concepts Covered

| # | Concept | Used For |
|---|---|---|
| 1️⃣ | `CREATE DATABASE` | Creating database |
| 2️⃣ | `CREATE TABLE` | Creating tables |
| 3️⃣ | `INSERT INTO` | Adding records |
| 4️⃣ | `SELECT` | Retrieving records |
| 5️⃣ | `WHERE` | Filtering records |
| 6️⃣ | `UPDATE` | Updating records |
| 7️⃣ | `DELETE` | Deleting records |
| 8️⃣ | `ORDER BY` | Sorting records |
| 9️⃣ | `BETWEEN` | Finding values in a range |
| 🔟 | `MAX()` | Finding maximum value |
| 1️⃣1️⃣ | `MIN()` | Finding minimum value |
| 1️⃣2️⃣ | `AVG()` | Finding average value |
| 1️⃣3️⃣ | `SUM()` | Calculating total |
| 1️⃣4️⃣ | `COUNT()` | Counting records |
| 1️⃣5️⃣ | `GROUP BY` | Grouping records |
| 1️⃣6️⃣ | `LIMIT` | Limiting results |
| 1️⃣7️⃣ | `SUBQUERY` | Finding max/min product |
| 1️⃣8️⃣ | `FOREIGN KEY` | Creating table relationships |

---

## 🖥️ Screenshots

### 📋 Display All Products

<img width="1078" height="718" alt="Screenshot 2026-09-12 103733" src="https://github.com/user-attachments/assets/75f53df8-1ac4-4e84-a3e6-678d28fde766" />


### 📊 Products in Descending Price Order

<img width="1078" height="716" alt="Screenshot 2026-09-12 103815" src="https://github.com/user-attachments/assets/51398dd6-2887-4e92-bab8-973cfc5a934d" />


### 💰 Products Between 500 and 2000

<img width="1079" height="719" alt="Screenshot 2026-09-12 103846" src="https://github.com/user-attachments/assets/650d6458-d17f-4d3d-93b9-e41070c25b21" />


### 🏆 Most Expensive Product

<img width="1078" height="719" alt="Screenshot 2026-09-12 103911" src="https://github.com/user-attachments/assets/0f3391de-fa1a-4d5b-bb24-7ad1e493a9ee" />


### 💵 Cheapest Product

<img width="1076" height="719" alt="Screenshot 2026-09-12 103937" src="https://github.com/user-attachments/assets/b46f6ebb-2ab2-4e64-8479-60fe1f38315c" />




GitHub supports relative image paths in README files, which makes repository screenshots easy to display. citeturn0search0turn0search2

---

## 🎥 Project Video

▶️ **Watch the SQL Project Demo:**  
[🎬 Click Here to Watch the Video](https://1drv.ms/v/c/add06c1d01a88aae/IQDoiR74mVdeTbmIpPG1HWKTAY6ZlmZVMpWzcm6EjpftjNY?e=MwkJ93)



---

## 📁 Project Files

```text
DataDigger/
│
├── 📄 datadigger.sql
├── 📄 README.md
│
└── 📁 screenshots/
    ├── 🖼️ Screenshot-1.png
    ├── 🖼️ Screenshot-2.png
    ├── 🖼️ Screenshot-3.png
    ├── 🖼️ Screenshot-4.png
    └── 🖼️ Screenshot-5.png
```

---

## 🚀 How To Run

### 1️⃣ Open MySQL Workbench

Open **MySQL Workbench** and connect to your local MySQL server.

### 2️⃣ Open the SQL File

Open:

```text
datadigger.sql
```

### 3️⃣ Run the SQL Script

Execute the SQL statements in MySQL Workbench.

### 4️⃣ Select the Database

```sql
USE DataDigger;
```

### 5️⃣ Check the Tables

You can check the created tables using:

```sql
SHOW TABLES;
```

### 6️⃣ View the Records

```sql
SELECT * FROM Customers;
SELECT * FROM orderd;
SELECT * FROM product;
SELECT * FROM OrderDetails;
```

---

## 🧠 What I Learned

- 🗄️ Database creation and management
- 🏗️ Table creation
- 🔑 Primary keys
- 🔗 Foreign keys
- 📝 Data insertion
- 🔍 Data retrieval
- ✏️ Updating records
- 🗑️ Deleting records
- 📊 Aggregate functions
- 🔢 Grouping and sorting
- 🔎 Filtering with `WHERE`
- 📈 Basic SQL data analysis
- 🧩 Subqueries
- 🛒 Working with related tables

---

## 🛠️ Technologies Used

- 🐬 **MySQL**
- 🖥️ **MySQL Workbench**
- 📜 **SQL**
- 💻 **Windows**

---

## 👨‍💻 Author

**Swayam Vekariya**

💻 Beginner SQL / Database Project

⭐ If you like this project, consider giving the repository a star!

---

## 📜 License

This project is created for **learning and educational purposes**.
