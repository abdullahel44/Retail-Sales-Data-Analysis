# 🛒 Retail Sales & Customer Behavior Analytics

An end-to-end data analysis project exploring retail sales trends, revenue distribution, product performance, and customer behavior using **SQL Server** for data cleaning and exploration, and **Power BI** for visual analytics and dashboarding.

---

## 📌 Project Overview

This project analyzes transactional retail sales data to help business stakeholders uncover key drivers of revenue, evaluate the effectiveness of the customer membership (loyalty) program, identify top-performing products, and understand customer buying patterns across regions and genders.

---

## 🛠️ Tools & Technologies Used

* **SQL Server (SSMS)**: Data cleaning, data type casting, business logic validation, and aggregation queries.
* **Power BI**: Data modeling, KPI formulation, interactive visualization, and dashboard development.

---

## 🔍 Key Data Insights & Findings

1. **Revenue & Bestsellers**:
   * **Shampoo** is the top revenue-generating and highest-volume product, driving over **$27,000** in total sales across all branches.
   * **Apple** represents the lowest revenue-generating item in the current product catalog.

2. **Loyalty & Membership System**:
   * Reward points are strictly assigned to **Member** accounts (~10% point-back return rate relative to transaction value).
   * Members demonstrate higher purchase consistency compared to **Normal** (non-member) customers.

3. **Regional & Gender Trends**:
   * Balanced sales distribution between male and female customer demographics.
   * Regional branch performance highlights core growth drivers across key store locations.

---

## 📊 Dashboard Preview & Features

The Power BI Dashboard includes:
* **Executive KPIs**: Total Revenue, Total Units Sold, Order Count, and Average Order Value.
* **Product Analytics**: Horizontal Bar Chart ranking top-selling items and Treemap breakdown by category.
* **Customer Behavioral Breakdown**: Member vs. Normal spending comparisons and Gender distribution visuals.
* **Interactive Slicers**: Dynamic filtering by City, Branch, and Customer Type.

---

## ⚙️ How to Reproduce

1. **SQL Database Setup**:
   * Import the raw data into SQL Server.
   * Run the cleaning and transformation scripts (converting financial columns to `DECIMAL(10,2)`).
2. **Power BI Integration**:
   * Connect Power BI Desktop to your SQL Server instance (`DESKTOP-S16ISFI`).
   * Select the `sales` table / views and apply visual configurations.
