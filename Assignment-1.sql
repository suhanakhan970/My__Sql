create database Assignment_1;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

--------- Sample data---------------------------------------------------
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'John', 'Doe', 'IT', 60000, '2020-01-15'),
(2, 'Jane', 'Smith', 'HR', 55000, '2019-03-10'),
(3, 'Mike', 'Brown', 'IT', 70000, '2021-07-25'),
(4, 'Emily', 'Davis', 'Finance', 80000, '2018-05-30'),
(5, 'Anna', 'Johnson', 'Marketing', 45000, '2022-11-01'),
(6, 'Chris', 'Williams', 'IT', 90000, '2020-02-20'),
(7, 'Sarah', 'Jones', 'HR', 48000, '2021-08-15'),
(8, 'David', 'Garcia', 'Finance', 75000, '2019-12-01'),
(9, 'Laura', 'Martinez', 'Marketing', 52000, '2022-04-12'),
(10, 'Robert', 'Hernandez', 'IT', 62000, '2020-11-30'),
(11, 'Megan', 'Lopez', 'HR', 50000, '2021-01-10'),
(12, 'James', 'Gonzalez', 'Finance', 73000, '2018-09-15'),
(13, 'Linda', 'Wilson', 'IT', 77000, '2022-05-22'),
(14, 'Paul', 'Anderson', 'Marketing', 46000, '2020-03-14'),
(15, 'Nina', 'Thomas', 'HR', 53000, '2019-07-19'),
(16, 'Kevin', 'Taylor', 'Finance', 85000, '2018-08-24'),
(17, 'Ashley', 'Moore', 'IT', 64000, '2021-02-12'),
(18, 'Brian', 'Jackson', 'Marketing', 47000, '2021-04-16'),
(19, 'Jessica', 'Martinez', 'HR', 49000, '2022-02-28'),
(20, 'Charles', 'White', 'Finance', 72000, '2019-11-11'),
(21, 'Diana', 'Harris', 'IT', 68000, '2020-06-18'),
(22, 'Sam', 'Clark', 'Marketing', 53000, '2021-09-10'),
(23, 'Olivia', 'Lewis', 'HR', 54000, '2021-03-01'),
(24, 'Jack', 'Walker', 'Finance', 80000, '2019-05-05'),
(25, 'Sophia', 'Hall', 'IT', 72000, '2022-06-30'),
(26, 'Henry', 'Allen', 'Marketing', 50000, '2020-10-20'),
(27, 'Ella', 'Young', 'HR', 58000, '2022-01-05'),
(28, 'David', 'King', 'Finance', 77000, '2018-12-12'),
(29, 'Isabella', 'Scott', 'IT', 62000, '2022-03-14'),
(30, 'William', 'Adams', 'Marketing', 45000, '2021-05-19'),
(31, 'Charleson', 'White', 'Finance', 72000, '2019-11-11'),
(32, 'Diyana', 'Harris', 'IT', 68000, '2020-06-18'),
(33, 'SamY', 'Clark', 'Marketing', 53000, '2021-09-10'),
(34, 'HOlivia', 'Lewis', 'HR', 54000, '2021-03-01'),
(35, 'JackSson', 'Walker', 'Finance', 80000, '2019-05-05'),
(36, 'phia', 'Hall', 'IT', 72000, '2022-06-30'),
(37, 'Senry', 'Allen', 'Marketing', 50000, '2020-10-20'),
(38, 'Ellayan', 'Young', 'HR', 58000, '2022-01-05'),
(39, 'Davidson', 'King', 'Finance', 77000, '2018-12-12'),
(40, 'bella', 'Scott', 'IT', 62000, '2022-03-14'),
(41, 'Will', 'Adams', 'Marketing', 45000, '2021-05-19');
select * from assignment_1.employees;
select * from employees where Salary>50000;
select * from employees where HireDate<"2020-01-01";
select * from employees where Department="Marketing";
select * from employees where FirstName like "a%";
select * from employees where Salary=60000;
select * from employees where Department="IT" and Salary>70000;
select * from employees where Department="Finance" or Salary<45000;
select * from employees where FirstName like "%b"  and Salary<60000;
select * from employees where HireDate between "2019-01-01" and "2020-01-31";
select * from employees where Salary>50000 and HireDate>"2021-01-01";
select * from employees where Department<>"It";
select * from employees where LastName not like "%e%";
select * from employees where Salary between 30000 and 60000;
select * from employees where FirstName like "%n";
select * from employees where HireDate="2022-01-01" or HireDate>"2022-01-01";
select * from employees where Department="HR" OR Salary>80000;
select * from employees where Salary<40000 and HireDate<"2019-01-01";
select * from employees where FirstName="John" or LastName="Doe";
select * from employees where Department<>"IT" and Salary<>750000;
select * from employees where HireDate between "2020-03-01"and "2020-03-31";
select * from employees where Salary>45000 and Department="IT" or "Finance";
select * from employees where HireDate="2022-05-15" or Department="Marketing";
select * from employees where Salary<60000 and HireDate>"2021-01-01";
select * from employees where FirstName like "A%" and LastName like "J%";
select * from employees where Department="HR" or HireDate>="2025-08-15";


