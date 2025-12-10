

# 📊 **E-Commerce Clothing Sales Performance Dashboard (2022)**

### **UrbanStyle Fashions – End-to-End Analytics Project**

**Tools Used:** Excel (Data Cleaning + Dashboard), SQL (Analysis)

## 📈 Dashboard Preview

![Retail Sales Analysis](Dashboard.png)

---

## 📌 **Project Overview**

This project analyzes **E-Commerce Clothing Sales for 2022** from an Indian online fashion brand.
The analysis covers:

* Data cleaning and preparation in Excel
* Detailed SQL-based sales and customer analytics
* Interactive dashboard creation in Excel using Pivot Tables & Charts

The goal is to understand **sales trends, customer segments, channel performance, product patterns, and regional insights**.

---

# 🗂️ **Project Workflow**

Here is the exact workflow followed in this project:

### **1️⃣ Data Cleaning – Excel**

### **2️⃣ Data Analysis – SQL**

### **3️⃣ Dashboard Creation – Excel**

This combination shows your ability to use Excel for ETL + visualization and SQL for deep analysis.

---

# 🧹 **1. Data Cleaning (Excel)**

All data preprocessing was performed in Excel before loading into SQL.

### ✔ Cleaning Steps Performed

* Removed duplicate rows
* Standardized **date format (DD/MM/YYYY)**
* Corrected age groups using a formula
* Trimmed inconsistent text in columns (Channel, Category, SKU, City, State)
* Converted *Amount* and *Qty* to proper numeric formats
* Fixed missing or inconsistent postal codes
* Ensured consistent labels for Status (Delivered, Refunded, Returned)

### ✔ New Columns Created

* **Age Group** (Teenager, Adult, Senior)
* **Month Name**
* **Order Month Number**
* **Customer Type** (B2B / B2C)

---

# 💽 **2. SQL Analysis**

All analytical insights were produced using SQL after the cleaned data was imported.

### ✔ Key SQL Metrics Calculated

* Total Sales
* Total Orders
* Average Order Value
* Sales by Category
* Sales by Size
* Sales by Age Group
* Sales by Gender
* State-wise Sales
* Channel Performance (Amazon, Myntra, Ajio, Meesho, etc.)
* Order Status Analysis (Delivered vs Refunded vs Returned)
* High-Value Customers
* Top SKUs
* Category Contribution %
* Age Group vs Category preference

👉 **Full SQL script available in:**
`/SQL/SQL_Analysis.sql`

---

# 📊 **3. Excel Dashboard**

After SQL analysis, insights were visualized in Excel using Pivot Tables, Pivot Charts, Slicers, and KPI Cards.

### ✔ Main Dashboard KPIs

* **₹21,178,663 Total Sales**
* **31,047 Total Orders**
* **28,434 Total Customers**
* **₹682.15 Average Order Value**
* **28,641 Delivered Orders**
* **92% Delivery Success Rate**

### ✔ Dashboard Visuals Included

* Monthly Sales vs Orders Trend
* Sales by Gender (Pie Chart)
* Order Status Analysis
* Top 5 States by Sales
* Age Group vs Gender Orders
* Channel Performance (Amazon, Flipkart, Myntra, Ajio, etc.)
* Slicers for Month, Channel, Category

👉 Dashboard file stored in:
`/Dashboard/Clothing_Sales_Dashboard.xlsx`

---

# 🔍 **Key Insights Generated**

### 📌 Sales Insights

* Kurta and Set categories dominated overall revenue.
* Strongest sales came from **Maharashtra, Karnataka, Telangana, Tamil Nadu**.

### 📌 Customer Insights

* **Women contributed 64% of total orders.**
* Adults (26–55) were the primary purchase segment.

### 📌 Channel Insights

* **Amazon contributed the highest share** of total orders, followed by Flipkart & Myntra.

### 📌 Operational Insights

* Delivery success rate: **92%**
* Refund rate was mainly from Amazon and Myntra.

---

# 📁 **Folder Structure**

```plaintext
📂 Ecommerce-Clothing-Sales-Project
│
├── 📁 Data_Cleaning
│   ├── Cleaned_Data.xlsx
│
├── 📁 SQL
│   ├── SQL_Analysis.sql
│
├── 📁 Dashboard
│   ├── Clothing_Sales_Dashboard.xlsx
│
└── README.md
