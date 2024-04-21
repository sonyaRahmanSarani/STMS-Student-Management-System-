create database STMS;
use STMS;

create table Admin(
      AdminId int IDENTITY(101,1) NOT NULL PRIMARY KEY,
	  FirstName varchar(50) NOT NULL,
	  LastName varchar(50) NOT NULL,
	  Cell varchar(11) NOT NULL,
	  Address varchar(50) NOT NULL,
	  Email varchar(50) NOT NULL,
	  Password varchar(30) NOT NULL
);
insert into Admin values('Shahriar', 'Fayyaz', 01975757575, 'Dhaka', 'fayyaz.admin@gmail.com', 654321);

select * from Admin


create table Students(
      StudentId int NOT NULL PRIMARY KEY,
	  FirstName varchar(50) NOT NULL,
	  LastName varchar(50) NOT NULL,
	  Cell varchar(11) NOT NULL,
	  Address varchar(50) NOT NULL,
	  Department varchar(30) NOT NULL,
	  Year int NOT NULL,
	  Semester int NOT NULL,
	  Session varchar(30) NOT NULL
);


--insert into Students values(200104053, 'Alif', 'Hossain', 01563456722, 'Dhaka', 1, 3.1, 'Spring2022', 123789);

--select * from Students;

create table Department(
      DepartmentId int NOT NULL PRIMARY KEY,
	  DepartmentName varchar(20) NOT NULL
);

create table Admission(
      AdmissionId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  StudentId int NOT NULL,
	  AdmissionDate date NOT NULL,
	  AdmissionSession varchar(30),
	  Department varchar(30)
);

/*alter table Students
add Password varchar(40);

alter table Admin
alter column Address varchar(50) NULL;

alter table Students
alter column Address varchar(50) NULL;

alter table Students
alter column DepartmentId varchar(50) NULL;

alter table Students
alter column Semester varchar(50) NULL;

alter table Students
alter column Session varchar(50) NULL;

update Students
set DepartmentName = 'CSE' where StudentId=200104053;*/



