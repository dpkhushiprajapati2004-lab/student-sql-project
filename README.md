# Student Admission Analysis (SQL)

A practice SQL project on a dummy dataset of 100 student admissions.
It covers course demand, location-wise admissions, fee payment status and scholarship patterns.

### 🎓 Student Admission Analysis using MySQL

## 📌 Project Overview
This project analyzes a dataset of **100 student admissions** using SQL.
The goal is to understand admission patterns, course demand, fee payment
behaviour and scholarship distribution, and to practice real-world data
analysis with MySQL.

> **Note:** All data in this project is dummy data created for practice.

---

## 🎯 Objectives
- Create a structured database table from raw Excel data
- Insert and update records using SQL
- Clean and validate the data
- Answer business questions using SQL queries
- Practice aggregation, grouping, filtering and CASE statements

---

## 🛠️ Tools Used
- **MySQL** / MySQL Workbench
- **Microsoft Excel** (source dataset)
- **GitHub** (project hosting)

---

## 🗂️ Dataset Description
The `students` table contains the following columns:

| Column | Data Type | Description |
|---|---|---|
| sr_no | INT (Primary Key) | Serial number |
| student_id | VARCHAR(20) | Unique student ID |
| student_name | VARCHAR(100) | Full name of the student |
| gender | VARCHAR(10) | Male / Female |
| email | VARCHAR(100) | Email address |
| phone | VARCHAR(20) | Phone number |
| study_year | INT | Year of study |
| course | VARCHAR(100) | Course enrolled in |
| total_course_fee | DECIMAL(10,2) | Total fee of the course |
| no_of_installments | INT | Number of fee installments |
| fee_paid_in_full | VARCHAR(5) | yes / no |
| no_of_subjects | INT | Number of subjects |
| admission_date | DATE | Date of admission |
| scholarship_status | VARCHAR(5) | Yes / No |
| scholarship_amount | DECIMAL(10,2) | Scholarship amount given |
| age | INT | Age of the student (added later) |
| location | VARCHAR(50) | City of the student (added later) |

---

## 📁 Project Structure
| File | Description |
|---|---|
| `01_create_table.sql` | Creates the `students` table |
| `02_insert_data.sql` | Inserts 100 student records |
| `03_add_age_location.sql` | Adds `age` and `location` columns using ALTER TABLE and fills them |
| `04_analysis_queries.sql` | All analysis queries |

---

## ▶️ How to Run
1. Open MySQL Workbench and create a database.
2. Run `01_create_table.sql`
3. Run `02_insert_data.sql`
4. Run `03_add_age_location.sql`
5. Run the queries from `04_analysis_queries.sql`

---

## 🔍 Analysis Performed

**1. Data Quality Checks**
- Total record count
- Duplicate student ID check
- Mismatch between scholarship status and scholarship amount

**2. Course Analysis**
- Number of students per course
- Average and total fee per course

**3. Fee Analysis**
- Students who paid full fees vs installment students
- List of students paying in installments

**4. Scholarship Analysis**
- Scholarship vs non-scholarship students
- Total scholarship amount given
- Net revenue per course (fees minus scholarship)
- Top 5 scholarship receivers

**5. Admission Trends**
- Gender-wise distribution
- Month-wise admissions

**6. Location Analysis**
- City-wise admissions with percentage share
- Course preference by city
- Average fee by city

**7. Age Analysis**
- Age-group-wise students and scholarships

---

## 💡 SQL Concepts Used
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `GROUP BY` and `HAVING`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `ROUND`
- `CASE WHEN` for age grouping
- `DATE_FORMAT` for monthly trends
- Subqueries
- `ALTER TABLE`
- `INSERT ... ON DUPLICATE KEY UPDATE`

---

## ⚠️ Data Notes
- `no_of_subjects` is empty (NULL) because it was not in the source sheet.
- Some records have a mismatch between scholarship status and scholarship
  amount. This is identified in the data quality check query.

---

## 🚀 Future Improvements
- Build a Power BI dashboard on this data
- Add more tables (courses, fees payment) and use JOINs
- Add window functions for ranking and running totals

---

## 👩‍💻 Author
Created as a practice project to learn SQL and data analysis.
