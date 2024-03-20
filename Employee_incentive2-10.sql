create database Employee
use Employee;
create table Employee
(
	Employee_id int primary key,
    First_name varchar(20) not null,
    Last_name varchar(20),
    Salary int not null,
    Joining_date DATETIME,
    Department varchar(20) not null
);

insert into Employee (Employee_id,First_name,Last_name,Salary,Joining_date,Department)
values
(1,"John","Abraham",100000,'2013-01-01 12.00.00',"Banking"),
(2,"Michael","Clarke",80000,'2013-01-01 12.00.00',"Insurance"),
(3,"Roy","Thomas",70000,'2013-02-01 12.00.00',"Banking"),
(4,"Tom","Jose",60000,'2013-02-01 12.00.00',"Insurance"),
(5,"Jerry","Pinto",65000,'2013-02-01 12.00.00',"Insurance"),
(6,"Philip","Mathew",75000,'2013-01-01 12.00.00',"Service"),
(7,"TestName1","123",65000,'2013-01-01 12.00.00',"Service"),
(8,"TestName2","Lname",60000,'2013-02-01 12.00.00',"Insurance")

select * from Employee

CREATE TABLE Incentive 
(
  Employee_ref_id INT,
  Incentive_date DATE,
  Incentive_amount int,
  FOREIGN KEY (Employee_ref_id) REFERENCES Employee(Employee_id)
);

insert into Incentive(Employee_ref_id,Incentive_date,Incentive_amount)
values
(1,'2013-02-01',5000),
(2,'2013-02-01',3000),
(3,'2013-02-01',4000),
(1,'2013-01-01',4500),
(2,'2013-01-01',3500)

select * from Incentive

SELECT First_name FROM employee;

SELECT First_name,Salary,Joining_date from employee;

SELECT * FROM employee ORDER BY First_name,Salary DESC;

SELECT * FROM employee where First_name like "%J%";

SELECT MAX(Salary),First_name,Last_name as max_salary 
FROM employee GROUP BY Department order by Salary;

SELECT employee.First_name, incentive.Incentive_amount FROM employee 
RIGHT JOIN 	incentive ON 
employee.Employee_id = incentive.employee_ref_id 
where incentive.Incentive_amount>3000;
