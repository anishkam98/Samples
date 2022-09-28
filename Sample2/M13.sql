use mende135
go

Drop table if exists Students, Advisors, Majors
go


Create table Majors (
 MajorID int identity (1,1)
,constraint PK_Majors Primary Key (MajorID)
,MajorName varchar(100) not null
)

Create table Advisors (
 AdvisorID int identity (1,1)
 ,constraint PK_Advisors Primary Key (AdvisorID)
,FirstName varchar(100) not null
,LastName varchar(100) not null
)

Create table Students (
 StudentID int identity (1,1)
,constraint PK_Students Primary Key (StudentID)
,FirstName varchar(100) not null
,LastName varchar(100) not null
,Gender varchar(100) not null
,DateOfBirth date not null
,CellNumber char(10) null
,MajorID int default 1 not null
,constraint FK_Students_Major Foreign Key (MajorID) references Majors (MajorID)
,AdvisorID int not null
constraint FK_Students_Advisor Foreign Key (AdvisorID) references Advisors (AdvisorID)
)

insert into Majors (MajorName) values ('Undeclared'), ('Cybersecurity'), ('Criminal Justice'), ('Information Technology')

insert into Advisors (FirstName, LastName) values ('Kambiz', 'Ghazinour'), ('Lisa', 'Colbert'), ('Tatsuhito', 'Koya')

insert into Students (FirstName, LastName, Gender, AdvisorID, MajorID, DateOfBirth, CellNumber) values ('Anishka', 'Mendez', 'Female', 1, 2,'1111-11-11', '7168888888')
insert into Students (FirstName, LastName, Gender, AdvisorID, MajorID, DateOfBirth, CellNumber) values ('John', 'Smith', 'Male', 2, default, '2001-01-01','5185559876')
insert into Students (FirstName, LastName, Gender, AdvisorID, MajorID, DateOfBirth) values ('Joe', 'Smith', 'Male', 2, 3, '1994-03-15')
insert into Students (FirstName, LastName, Gender, AdvisorID, MajorID, DateOfBirth, CellNumber) values ('Sue', 'Snell', 'Female', 3, 4, '2002-09-21', '2155559999')
insert into Students (FirstName, LastName, Gender, AdvisorID, MajorID, DateOfBirth) values ('Sally', 'Andrews', 'Female', 3, 4, '1980-05-06')

select * from Majors
select * from Advisors
select * from students

select concat(s.LastName, ',', ' ', s.FirstName) [Student Name]
	, m.MajorName
	, concat(a.LastName, ',', ' ', a.FirstName) [Advisor Name]
from Students s inner join Majors m on s.MajorID = m.MajorID
	inner join Advisors a on s.AdvisorID = a.AdvisorID