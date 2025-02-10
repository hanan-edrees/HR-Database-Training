###*1. Create Tables With Constraints*
sql
-- Departments Table
CREATE TABLE Departments_2 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR2(50) NOT NULL UNIQUE,
    ManagerID INT
);

-- Employees Table
CREATE TABLE Employees_2 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR2(50) NOT NULL,
    LastName NVARCHAR2(50) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2) CHECK (Salary >= 0),
    FOREIGN KEY (DepartmentID) REFERENCES Departments_2(DepartmentID)
);

-- Instructors Table
CREATE TABLE Instructors_2 (
    InstructorID INT PRIMARY KEY,
    FirstName NVARCHAR2(50) NOT NULL,
    LastName NVARCHAR2(50) NOT NULL
);

-- TrainingCourses Table
CREATE TABLE TrainingCourses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR2(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors_2(InstructorID)
);

-- LeaveRequests Table
CREATE TABLE LeaveRequests (
    LeaveID INT PRIMARY KEY,
    EmployeeID INT,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Reason NVARCHAR2(100),
    Status NVARCHAR2(20) CHECK (Status IN ('Pending', 'Approved', 'Rejected')),
    FOREIGN KEY (EmployeeID) REFERENCES Employees_2(EmployeeID)
);


---

#### *2. Insert Sample Data*
sql
-- Departments
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(1, 'HR', 1)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(2, 'Finance', 2)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(3, 'IT', 3)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(4, 'Marketing', 4)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(5, 'Operations', 5)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(6, 'Sales', 6)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(7, 'Customer Service', 7)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(8, 'Operations', 8)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(9, 'Research and Development', 9)
INSERT INTO Departments_2 (DepartmentID, DepartmentName, ManagerID) VALUES(10, 'Finance', 10)



-- Employees
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES (1, 'John', 'Doe', 1, 50000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(2, 'Jane', 'Smith', 2, 60000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(3, 'Ahmad', 'Ali', 3, 55000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(4, 'Sara', 'Khan', 2, 52000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(5, 'Mohamed', 'Hassan', 1, 48000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(6, 'Hassan', 'Ali', 1, 54000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(7, 'Fatima', 'Khaled', 2, 62000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(8, 'Amr', 'Mohamed', 3, 56000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(9, 'Sara', 'Ahmed', 4, 51000.00)
INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID, Salary) VALUES(10, 'Ahmed', 'Youssef', 1, 59000.00)

-- Instructors
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(1, 'Sarah', 'Johnson')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(2, 'James', 'Smith')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(3, 'Mary', 'Davis')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(4, 'Ahmed', 'Hassan')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(5, 'Fatima', 'Ali')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(6, 'Yasmine', 'Ali')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(7, 'Mohamed', 'Hassan')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(8, 'Ahmed', 'Youssef')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(9, 'Amr', 'Mohamed')
INSERT INTO Instructors_2 (InstructorID, FirstName, LastName) VALUES(10, 'Sara', 'Ahmed')

-- TrainingCourses
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(201, 'Leadership Skills', DATE '2023-11-05', DATE '2023-11-07', 1)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(202, 'Excel Advanced', DATE '2023-11-12', DATE '2023-11-14', 2)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(203, 'Time Management', DATE '2023-11-20', DATE '2023-11-21', 3)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(204, 'Communication Tips', DATE '2023-12-02', DATE '2023-12-04', 4)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(205, 'Conflict Resolution', DATE '2023-12-10', DATE '2023-12-11', 5)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(206, 'Negotiation Skills', DATE '2023-12-20', DATE '2023-12-22', 6)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(207, 'Financial Planning', DATE '2024-01-05', DATE '2024-01-07', 7)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(208, 'Leadership Workshop', DATE '2024-01-10', DATE '2024-01-12', 8)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(209, 'Effective Communication', DATE '2024-01-15', DATE '2024-01-17', 9)
INSERT INTO TrainingCourses (CourseID, CourseName, StartDate, EndDate, InstructorID) VALUES(210, 'Time Management', DATE '2024-01-20', DATE '2024-01-22', 10)

-- LeaveRequests
INSERT INTO LeaveRequests (LeaveID, EmployeeID, StartDate, EndDate, Reason, Status) VALUES (1, 1, DATE '2023-10-10', DATE '2023-10-14', 'Annual Leave', 'Approved')
INSERT INTO LeaveRequests (LeaveID, EmployeeID, StartDate, EndDate, Reason, Status) VALUES(2, 3, DATE '2023-11-05', DATE '2023-11-07', 'Conference', 'Pending')
INSERT INTO LeaveRequests (LeaveID, EmployeeID, StartDate, EndDate, Reason, Status) VALUES(3, 2, DATE '2023-10-20', DATE '2023-10-21', 'Sick Leave', 'Approved')
INSERT INTO LeaveRequests (LeaveID, EmployeeID, StartDate, EndDate, Reason, Status) VALUES(4, 4, DATE '2023-12-01', DATE '2023-12-03', 'Family Emergency', 'Pending')


-- Update Salary for Employee 5
UPDATE Employees_2 SET Salary = 52000.00 WHERE EmployeeID = 5;

-- Rename Department "HR" to "Human Resources"
UPDATE Departments_2 SET DepartmentName = 'Human Resources' WHERE DepartmentID = 1;

-- Update Manager for Department 3
UPDATE Departments_2 SET ManagerID = 10 WHERE DepartmentID = 3;

-- Update Start Date for Course 202
UPDATE TrainingCourses SET StartDate = DATE '2023-11-13' WHERE CourseID = 202;

-- Delete Employee 8
DELETE FROM Employees_2 WHERE EmployeeID = 8;

-- Delete Department 7
DELETE FROM Departments_2 WHERE DepartmentID = 7;

-- Delete Course 205
DELETE FROM TrainingCourses WHERE CourseID = 205;


---

#### *4. Simple Queries*
-- 1. Get Employee Names and Salaries
SELECT FirstName, LastName, Salary FROM Employees_2;

-- 2. Calculate Average Salary
SELECT AVG(Salary) AS AverageSalary FROM Employees_2;

-- 3. List Department Names
SELECT DepartmentName FROM Departments_2;

-- 4. Get Course Names and Start Dates
SELECT CourseName, StartDate FROM TrainingCourses;


---

#### *5. Complex Queries*
-- 1. Employees per Department with Average Salary
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount, AVG(e.Salary) AS AvgSalary
FROM Departments_2 d
LEFT JOIN Employees_2 e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

-- 2. Instructors and Their Courses
SELECT i.FirstName, i.LastName, tc.CourseName
FROM Instructors_2 i
JOIN TrainingCourses tc ON i.InstructorID = tc.InstructorID;

-- 3. Departments with More Than 3 Employees
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments_2 d
JOIN Employees_2 e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName
HAVING COUNT(e.EmployeeID) > 3

-- 4. Highest Salary per Department
SELECT d.DepartmentName, e.FirstName, e.LastName, e.Salary
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID
WHERE (e.DepartmentID, e.Salary) IN (
    SELECT DepartmentID, MAX(Salary)
    FROM Employees_2
    GROUP BY DepartmentID
)
 
--5 Get the number of employees in each department
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS NumberOfEmployees
FROM Departments_2 d
LEFT JOIN Employees_2 e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

--6 Get the name of the instructor and the number of courses they teach
SELECT i.FirstName, i.LastName, COUNT(t.CourseID) AS NumberOfCourses
FROM Instructors_2 i
LEFT JOIN TrainingCourses t ON i.InstructorID = t.InstructorID
GROUP BY i.FirstName, i.LastName;

--7 Get the names of employees and the departments they work in
SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID

--8 Retrieve employees who work in departments with more than 3 employees
SELECT e.FirstName, e.LastName
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IN (
    SELECT DepartmentID
    FROM Employees_2
    GROUP BY DepartmentID
    HAVING COUNT(EmployeeID) > 3
)

--9 Retrieve employees who have the same name as their department
SELECT e.FirstName, e.LastName
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID
WHERE e.FirstName = d.DepartmentName OR e.LastName = d.DepartmentName

-- 10 Retrieve courses taught by instructor "Sarah Johnson"
SELECT t.CourseName
FROM TrainingCourses t
JOIN Instructors_2 i ON t.InstructorID = i.InstructorID
WHERE i.FirstName = 'Sarah' AND i.LastName = 'Johnson';

--11 Retrieve employees who do not have a manager assigned
SELECT e.FirstName, e.LastName
FROM Employees_2 e
LEFT JOIN Departments_2 d ON e.EmployeeID = d.ManagerID
WHERE d.ManagerID IS NULL

--12 Retrieve department names and the total salary of employees in each department
SELECT d.DepartmentName, SUM(e.Salary) AS TotalSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName

--13 Retrieve department names and the employee with the highest salary in each department
SELECT d.DepartmentName, e.FirstName, e.LastName, e.Salary
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID
WHERE (e.DepartmentID, e.Salary) IN (
    SELECT DepartmentID, MAX(Salary)
    FROM Employees_2
    GROUP BY DepartmentID
)

--14 Retrieve the number of training courses that start after '2023-12-01'
SELECT COUNT(*) AS NumberOfCourses
FROM TrainingCourses
WHERE StartDate > TO_DATE('2023-12-01', 'YYYY-MM-DD')

--15 Retrieve employees with the highest salary in each department
SELECT e.FirstName, e.LastName, e.Salary, d.DepartmentName
FROM Employees_2 e
JOIN Departments_2 d ON e.DepartmentID = d.DepartmentID
WHERE (e.DepartmentID, e.Salary) IN (
    SELECT DepartmentID, MAX(Salary)
    FROM Employees_2
    GROUP BY DepartmentID
)

--?END
