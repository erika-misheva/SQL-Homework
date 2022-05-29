CREATE DATABASE SEDCACADEMYDB;

USE SEDCACADEMYDB;


CREATE TABLE [Student](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	FirstName [nvarchar](30)NULL,
	LastName [nvarchar](50) NULL,
	DateOfBirth [date] NULL,
	EnrolledDate [date] NULL,
	Gender [nvarchar] (10) NULL,
	NationalIDNumber [nvarchar] (11)NULL,
	StudentCardID [nvarchar] (11)NULL
);


CREATE TABLE [Teacher](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	FirstName [nvarchar] (30) NULL,
	LastName [nvarchar] (30) NULL,
	DateOfBirth [Date] NULL,
	AcademicRank [nvarchar] (20) NULL,
	HireDate [date] NULL
);
CREATE TABLE [Course](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar] (30) NULL,
	Credit [nvarchar] (10)NULL,
	AcademicYear [date] NULL,
	Semestar [nvarchar] (20) NULL
);

CREATE TABLE [Grade](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	StudentID [int]	NOT NULL,
	FOREIGN KEY (StudentID) REFERENCES Student(ID),
	CourseID [int],
	FOREIGN KEY (CourseID) REFERENCES Course(ID),
	TeacherID [int] NOT NULL,
	FOREIGN KEY (TeacherID) REFERENCES Teacher(ID),
	Grade[int] NULL,
	Comment [nvarchar] (30)NULL,
	CreatedDate [date] NULL
);

CREATE TABLE [GradeDetails](
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	GradeID [int]	NOT NULL,
	FOREIGN KEY (GradeID) REFERENCES Grade(ID),
	AchievementTypeID [int] NULL,
	AchievementsPoints [nvarchar] (14) NULL,
	AchievementsMaxPoints [nvarchar] (12)  NULL,
    AchievementDate [date] NULL
);

CREATE TABLE [AchievementType] (
	ID [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar] (18) NULL,
	[Description] [nvarchar] (40) NULL,
	ParticipationRate [nvarchar] (12) NULL
);
