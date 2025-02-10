# *HR Database Training Project*  

Welcome to my *HR Database Training Project*! This project is a hands-on exercise to practice SQL skills by designing and implementing a relational database for an HR management system. It includes table creation, data manipulation, and complex queries to simulate real-world HR processes.  

---

## *Project Overview*  
This project demonstrates my ability to:  
- Design a normalized database schema.  
- Write SQL scripts for table creation, data insertion, and manipulation.  
- Perform complex queries to analyze data.  
- Apply constraints to ensure data integrity.  

The database includes tables for *Departments, **Employees, **Instructors, **Training Courses, and **Leave Requests*, with relationships between them.  

---

## *Database Schema*  
The database consists of the following tables:  

### *Tables*  
1. *Departments_2*  
   - DepartmentID (Primary Key)  
   - DepartmentName  
   - ManagerID  

2. *Employees_2*  
   - EmployeeID (Primary Key)  
   - FirstName  
   - LastName  
   - DepartmentID (Foreign Key)  
   - Salary  

3. *Instructors_2*  
   - InstructorID (Primary Key)  
   - FirstName  
   - LastName  

4. *TrainingCourses*  
   - CourseID (Primary Key)  
   - CourseName  
   - StartDate  
   - EndDate  
   - InstructorID (Foreign Key)  

5. *LeaveRequests*  
   - LeaveID (Primary Key)  
   - EmployeeID (Foreign Key)  
   - StartDate  
   - EndDate  
   - Reason  
   - Status  

---

## *Features*  
- *Table Creation*: Tables are created with appropriate constraints (PRIMARY KEY, FOREIGN KEY, CHECK, UNIQUE).  
- *Sample Data*: Populated with realistic data for testing and analysis.  
- *Queries*: Includes both simple and complex queries to retrieve and analyze data.  
- *Data Manipulation*: Demonstrates INSERT, UPDATE, and DELETE operations.  

---

## *SQL Scripts*  
The repository contains the following files:  
1. *create_tables.sql*: SQL script to create all tables with constraints.  
2. *insert_data.sql*: SQL script to insert sample data into the tables.  
3. *queries.sql*: SQL script with example queries for data analysis.  
4. *modifications.sql*: SQL script demonstrating data updates and deletions.  

---

## *How to Use*  
1. Clone this repository to your local machine.  
   bash
   git clone https://github.com/hanan-edrees/HR-Database-Training   
2. Open the SQL scripts in an Oracle SQL environment (e.g., Oracle SQL Developer).  
3. Run the scripts in the following order:  
   - create_tables.sql  
   - insert_data.sql  
   - queries.sql (optional: for testing queries)  
   - modifications.sql (optional: for testing updates/deletions)  

---

## *Example Queries*  
Here are some example queries included in the project:  

1. *List all employees and their departments:*  
   sql
   SELECT e.FirstName, e.LastName, d.DepartmentName
   FROM Employees_2 e
   JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID;
   

2. *Calculate the average salary per department:*  
   sql
   SELECT d.DepartmentName, AVG(e.Salary) AS AvgSalary
   FROM Departments_2 d
   JOIN Employees_2 e ON d.DepartmentID = e.DepartmentID
   GROUP BY d.DepartmentName;
   

3. *Find employees with pending leave requests:*  
   sql
   SELECT e.FirstName, e.LastName, lr.Reason, lr.StartDate, lr.EndDate
   FROM Employees_2 e
   JOIN LeaveRequests lr ON e.EmployeeID = lr.EmployeeID
   WHERE lr.Status = 'Pending';
   
---
