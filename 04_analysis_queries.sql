-- ============ 1. DATA CHECK ============
SELECT COUNT(*) AS total_students FROM students;

SELECT student_id, COUNT(*) FROM students GROUP BY student_id HAVING COUNT(*) > 1;

-- Scholarship status and amount mismatch
SELECT sr_no, student_name, scholarship_status, scholarship_amount
FROM students
WHERE (scholarship_status = 'No' AND scholarship_amount > 0)
   OR (scholarship_status = 'Yes' AND scholarship_amount = 0);

-- ============ 2. COURSE ANALYSIS ============
SELECT course, COUNT(*) AS students
FROM students GROUP BY course ORDER BY students DESC;

SELECT course, AVG(total_course_fee) AS avg_fee, SUM(total_course_fee) AS total_fee
FROM students GROUP BY course ORDER BY total_fee DESC;

-- ============ 3. FEES ANALYSIS ============
SELECT fee_paid_in_full, COUNT(*) AS students
FROM students GROUP BY fee_paid_in_full;

SELECT student_name, course, total_course_fee, no_of_installments
FROM students WHERE fee_paid_in_full = 'no'
ORDER BY total_course_fee DESC;

-- ============ 4. SCHOLARSHIP ANALYSIS ============
SELECT scholarship_status, COUNT(*) AS students, SUM(scholarship_amount) AS total_amount
FROM students GROUP BY scholarship_status;

SELECT course, SUM(total_course_fee - scholarship_amount) AS net_revenue
FROM students GROUP BY course ORDER BY net_revenue DESC;

SELECT student_name, course, scholarship_amount
FROM students ORDER BY scholarship_amount DESC LIMIT 5;

-- ============ 5. GENDER AND ADMISSION TREND ============
SELECT gender, COUNT(*) AS students FROM students GROUP BY gender;

SELECT DATE_FORMAT(admission_date, '%Y-%m') AS month, COUNT(*) AS admissions
FROM students GROUP BY month ORDER BY month;

-- ============ 6. LOCATION ANALYSIS ============
SELECT location, COUNT(*) AS total_admissions
FROM students GROUP BY location ORDER BY total_admissions DESC;

SELECT location,
       COUNT(*) AS total_admissions,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM students), 1) AS percentage,
       SUM(total_course_fee) AS total_fees
FROM students GROUP BY location ORDER BY total_admissions DESC;

SELECT location, course, COUNT(*) AS students
FROM students GROUP BY location, course ORDER BY location, students DESC;

SELECT location, AVG(total_course_fee) AS avg_fee
FROM students GROUP BY location ORDER BY avg_fee DESC;

-- ============ 7. AGE ANALYSIS ============
SELECT
  CASE
    WHEN age BETWEEN 18 AND 20 THEN '18-20'
    WHEN age BETWEEN 21 AND 23 THEN '21-23'
    ELSE '24-25'
  END AS age_group,
  COUNT(*) AS students,
  SUM(scholarship_amount) AS total_scholarship
FROM students GROUP BY age_group ORDER BY age_group;
