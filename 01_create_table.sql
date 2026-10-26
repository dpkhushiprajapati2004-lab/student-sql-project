-- Student Admission Project: create table
CREATE TABLE students (
  sr_no INT PRIMARY KEY,
  student_id VARCHAR(20),
  student_name VARCHAR(100),
  gender VARCHAR(10),
  email VARCHAR(100),
  phone VARCHAR(20),
  study_year INT,
  course VARCHAR(100),
  total_course_fee DECIMAL(10,2),
  no_of_installments INT,
  fee_paid_in_full VARCHAR(5),
  no_of_subjects INT,
  admission_date DATE,
  scholarship_status VARCHAR(5),
  scholarship_amount DECIMAL(10,2)
);
