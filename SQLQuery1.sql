Create Database SchoolSysDB
use SchoolSysDB
create table Class (
ClassId int primary key identity(1 ,1) not null,
ClassName varchar(50) Null
)
create table Subject (
SubjectId int primary key Identity(1,1) Not Null,
ClassId int foreign key references Class (ClassId) null,
SubjectName Varchar(50) Null
)
Create Table Student (
StudentId int primary key Identity(1,1) Not Null,
Name varchar(50) null,
DOB Date null,
Gender varchar(50) Null,
Mobile bigint null,
RollNo varchar(50) null,
Address varchar(max) Null,
ClassId int foreign key references Class (ClassId) null,
)
create table Teacher(
TeacherId int Primary Key Identity(1,1) not Null,
Name varchar(50) Null,
DOB date Null,
Gender varchar(50) Null,
Mobile bigint Null,
Email varchar(50) Null,
Addressm varchar(Max) Null,
Password varchar(20) Null
)
create Table TeacherSubject(
Id int Primary Key identity(1,1) not Null ,
ClassId int foreign key references Class (ClassId) null,
Subjectid int foreign key references Subject (SubjectId) null,
TeacherId int foreign key references Teacher (TeacherId) null,
)
create Table teacherAttendance(
Id int primary key Identity (1,1) not null,
TeacherId int foreign key references Teacher (TeacherId) null,
status bit null,
Date date null
)
create Table StudentAttendance(
Id int primary key Identity (1,1) not null,
ClassId int foreign key references Class (ClassId) null,
Subjectid int foreign key references Subject (SubjectId) null,
RollNo varchar(20) null,
status bit null,
Date date null
)
create Table Fees (
FeesId int Primary Key Identity(1,1) Not Null,
ClassId int foreign key references Class (ClassId) null,
FessAmount int Null
)
create Table Exam (
ExamId int Primary key identity(1,1) Not Null,
ClassId int foreign key references Class (ClassId) null,
Subjectid int foreign key references Subject (SubjectId) null,
RollNo varchar(20) null,
TotalMarks int null,
OutofMarks int null
)
create table Expese(
ExpenseId int Primary Key identity(1,1) Not Null,
ClassId int foreign key references Class (ClassId) null,
Subjectid int foreign key references Subject (SubjectId) null,
ChargeAmount int null
)