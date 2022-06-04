CREATE DATABASE SEDCACADEMYDB;

USE SEDCACADEMYDB;
drop Table Student;
drop Table Teacher;
drop Table Course;
drop Table Grade;
drop Table GradeDetails;
drop Table AchievementType;


CREATE TABLE [Student](
	ID [int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FirstName [nvarchar](100)NULL,
	LastName [nvarchar](100) NULL,
	DateOfBirth [date] NULL,
	EnrolledDate [date] NULL,
	Gender [nvarchar] (100) NULL,
	NationalIDNumber [nvarchar] (100)NULL,
	StudentCardNumber [nvarchar] (100)NULL
);

CREATE TABLE [Teacher](
	ID [int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FirstName [nvarchar] (100) NULL,
	LastName [nvarchar] (100) NULL,
	DateOfBirth [Date] NULL,
	AcademicRank [nvarchar] (100) NULL,
	HireDate [date] NULL
);

CREATE TABLE [Course](
	ID [int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
	[Name] [nvarchar] (100) NULL,
	Credit [int] NULL,
	AcademicYear [int] NULL,
	Semester [int] NULL
);

CREATE TABLE [Grade](
	ID [int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
	StudentID [int]	NOT NULL,
	FOREIGN KEY (StudentID) REFERENCES Student(ID),
	CourseID [int],
	FOREIGN KEY (CourseID) REFERENCES Course(ID),
	TeacherID [int] NOT NULL,
	FOREIGN KEY (TeacherID) REFERENCES Teacher(ID),
	Grade[int] NULL,
	Comment [nvarchar] (300)NULL,
	CreatedDate [date] NULL
);

CREATE TABLE [GradeDetails](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	GradeID [int]	NOT NULL,
	FOREIGN KEY (GradeID) REFERENCES Grade(ID),
	AchievementTypeID [int] NULL,
	AchievementPoints [int]  NULL,
	AchievementMaxPoints [int]  NULL,
    AchievementDate [date] NULL
);

CREATE TABLE [AchievementType] (
	ID [int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
	[Name] [nvarchar] (100) NULL,
	[Description] [nvarchar] (1000) NULL,
	ParticipationRate [nvarchar] (100) NULL
);

SELECT * FROM [Student];
SELECT * FROM Course;
SELECT * FROM Teacher;
SELECT * FROM AchievementType;
SELECT * FROM Grade;
SELECT * FROM GradeDetails;
