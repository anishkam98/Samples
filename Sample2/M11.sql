use mende135
go

Drop table if exists Employees
go

Create table Employees (
 EmployeeID int identity (1,1) Primary Key
,FirstName varchar(100) not null
,LastName varchar(100) not null
,MiddleName varchar(100) null
,DepartmentID int not null default 1
,DateHired date default GetDate()
)

insert into Employees (FirstName, LastName) values ('Thomas', 'Burl')

insert into Employees (Firstname, LastName, MiddleName, DepartmentID) values ('Helen', 'Lauzon', 'Theresa', 17)

insert into Employees (FirstName, LastName, MiddleName, DepartmentID, DateHired) values ('Robert', 'Butler', 'J', Default, '2021-01-10')

update Employees
set MiddleName = 'James'
where EmployeeID = 1

delete from Employees
where EmployeeID = 3

select * from Employees