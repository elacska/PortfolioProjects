


PROJECT 2 - TABLEAU

## 📊 Interactive Data Visualization
The live, interactive dashboard created from this project is published and available on Tableau Public: 
👉 [Click here to open the interactive COVID-19 Dashboard](https://public.tableau.com/app/profile/eleonora.nyilas/viz/CovidDashboardTutorial_17937957744480/Dashboard1)


PROJECT 3 - DATA CELANING

Project 3 - Nashville Housing Data Cleaning (PostgreSQL)

## 📌 Project Overview
This project focuses on the comprehensive **Data Cleaning and Data Transformation** of a raw housing dataset from Nashville, Tennessee. While the original tutorial by Alex The Analyst was built using Microsoft SQL Server, this repository showcases the entire pipeline successfully migrated and implemented in **PostgreSQL (pgAdmin 4)**. 

The primary goal of this project was to take massive, unformatted, and "dirty" real estate records (~56,000 rows) and transform them into a structured, optimized, and production-ready database schema for future business intelligence (BI) analysis and visualization.

---

## 🛠️ Tech Stack & Skills Demonstrated
*   **Database Engine:** PostgreSQL (pgAdmin 4)
*   **SQL Concepts Used:** DDL/DML, Advanced String Manipulation, Self-Joins, Window Functions, Subqueries, Common Table Expressions (CTEs), Conditional Logic (`CASE WHEN`).
*   **Data Wrangling Skills:** Multi-format file ingestion parsing, Outlier/Null handling, Data Type Standardisation, Schema Optimization.

---

## 🚀 Key Data Cleaning Challenges & Solutions

### 1. Advanced Data Ingestion & Delimiter War (PostgreSQL Workaround)
*   **The Problem:** The raw property addresses contained internal commas (e.g., `"1808 FOX CHASE DR, GOODLETTSVILLE"`). Standard comma-separated imports shifted all columns to the right, breaking the table structure and cutting off the final columns (like `HalfBath`).
*   **The Solution:** I engineered a robust workaround by first loading the entire text row unparsed into a single-column staging table using a custom character pipe (`|`). Then, I used the native PostgreSQL `string_to_array()` function combined with Tab-delimited (`E'\t'`) formatting to programmatically split the dataset into 20 clean, unshifted columns, effectively bypassing Excel/OS regional formatting issues.

### 2. Standardizing the Date Format
*   **The Problem:** The `SaleDate` column arrived as irregular text formats (e.g., `April 9, 2013`). 
*   **The Solution:** Instead of MS SQL's `CONVERT()`, I implemented the PostgreSQL `to_date()` function with a strict pattern matching mask (`'Month DD, YYYY'`) to bulk-update all 56,477 records into a standard `YYYY-MM-DD` date type.

### 3. Populating Missing Property Addresses (Self-Join)
*   **The Problem:** 29 records had missing (`NULL`) address data, but shared identical `ParcelID` numbers with other valid entries.
*   **The Solution:** I created an advanced **Self-Join** on the table, matching records with duplicate `ParcelID`s but unique `UniqueID`s. I utilized PostgreSQL's `COALESCE()` function within a highly optimized `UPDATE` query to automatically copy the valid addresses into the blank spaces.

### 4. Splitting Unformatted Strings into Modular Columns
*   **The Problem:** `PropertyAddress` and `OwnerAddress` packed the Street, City, and State together into single strings, making filtering impossible.
*   **The Solution:** I refactored the database schema using `ALTER TABLE` to add standalone columns. For `PropertyAddress`, I used a combination of `SUBSTRING()` and `POSITION()`. For `OwnerAddress`, I utilized PostgreSQL's powerful **`split_part()`** function, which offers a cleaner, more intuitive left-to-right logic than MS SQL's backward-counting `PARSENAME`.

### 5. Categorical Data Standardization
*   **The Problem:** The `SoldAsVacant` field was contaminated with inconsistent ror-entries (`Y`, `N`, `Yes`, `No`).
*   **The Solution:** I audited the data quality using a grouped `COUNT` query and normalized the field into clean, standardized `'Yes'` and `'No'` strings using robust conditional `CASE WHEN` statements.

### 6. Removing Duplicates (Subquery Architecture)
*   **The Problem:** The database contained 104 identical duplicate rows. PostgreSQL CTEs are fundamentally read-only, making MS SQL's direct `DELETE FROM CTE` method impossible.
*   **The Solution:** I constructed an elegant subquery architecture utilizing the `ROW_NUMBER() OVER(PARTITION BY...)` window function to filter duplicate unique IDs (`UniqueID`), allowing the outer `DELETE` statement to safely target and purge only the redundant rows.

### 7. Schema Optimization & Database Trimming
*   **The Action:** Dropped obsolete, redundant columns (`OwnerAddress`, `TaxDistrict`, `PropertyAddress`, `SaleDate`) using a multi-column PostgreSQL `DROP COLUMN` script to reduce server storage overhead, eliminate data redundancy, and boost future query response times.

---

## 📈 Final Results
The project resulted in a pristine, optimized database table with zero duplicate rows, fully populated fields, standardized date indexes, and modularized dimensional text columns ready to scale for analytical reporting.
