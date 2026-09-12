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

![Display All Products](./screenshots/Screenshot-1.png)

### 📊 Products in Descending Price Order

![Products Ordered by Price](./screenshots/Screenshot-2.png)

### 💰 Products Between 500 and 2000

![Products Between 500 and 2000](./screenshots/Screenshot-3.png)

### 🏆 Most Expensive Product

![Most Expensive Product](./screenshots/Screenshot-4.png)

### 💵 Cheapest Product

![Cheapest Product](./screenshots/Screenshot-5.png)

> 📌 **Note:** Put the five provided screenshots inside a `screenshots` folder in your GitHub repository and rename them to `Screenshot-1.png` through `Screenshot-5.png`.

GitHub supports relative image paths in README files, which makes repository screenshots easy to display. citeturn0search0turn0search2

---

## 🎥 Project Video

▶️ **Watch the SQL Project Demo:**  
[🎬 Click Here to Watch the Video](YOUR_VIDEO_LINK_HERE)

> 🔗 Replace `YOUR_VIDEO_LINK_HERE` with your YouTube, Google Drive, or other video link.

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
