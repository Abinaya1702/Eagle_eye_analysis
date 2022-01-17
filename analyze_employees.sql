//sql queries to analyze dates and employees table
//Abinaya Elanchezhian

//To view all the data in employees table
select * from employees

//To display all employees whose parent employee has a key 7
select * from employees where parentemployeekey='7'

//To display minimum and maximum starting date in the table
select min(employees.startdate), max(employees.startdate) from employees

//To display employees active on a particular date
select * from employees where employees.startdate>='2008-07-01' and
employees.enddate is NULL

//To display lastname of employees active on a particular date
select lastname from employees where employees.startdate>='2008-07-01' and
employees.enddate is NULL

//Display count of employees active on a particular date
select count(1) from employees where employees.startdate>='2008-07-01' and 
(employees.enddate<='2008-07-01' or employees.enddate is NULL)

//Display last names of all male employees in marketing department
select lastname from employees where departmentname = 'Marketing' and gender='M'

//Display the lastname and hiredate of all female employees in ascending order
select lastname, hiredate from employees where gender='F' order by hiredate ASC

