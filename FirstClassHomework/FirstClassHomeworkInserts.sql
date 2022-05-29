USE SEDCACADEMYDB;

INSERT INTO Student (FirstName, LastName, DateOfBirth, EnrolledDate, Gender, NationalIDNumber, StudentCardID)
VALUES('Ados', 'Drndaros', '2002.02.05' , '2018.02.05' , 'Male' , 'AB1234', 'hshs143'),
	  ('Elisa', 'Mikrasos', '2003.03.06', '2019.02.05', 'Female', '02dj20', 'hdbdk19'),
	  ('Marta','Marteska', '2005.05.05', '2020.06.03', 'Female' , 'hdghdg02', 'dgg288'),
	  ('Bob', 'Bobsky', '2003.04.03', '2009.04.03', 'Male' , 'dk39420', 'fj2939');

SELECT * FROM Student;

INSERT INTO Teacher(FirstName, LastName, DateOfBirth, AcademicRank, HireDate)
VALUES ('Stefani', 'Mayer', '1970.05.23', 'Profesor', '2019.08.10');

SELECT * FROM Teacher;

INSERT INTO Course([Name], Credit, AcademicYear, Semestar)
VALUES ('Web Development' , '20' ,'2021', '2');

SELECT * FROM Course;

INSERT INTO Grade (StudentID, CourseID, TeacherID, Grade,Comment, CreatedDate)
VALUES(1, 1, 1, 5, 'Nice Job', '2022.05.20'),
	  (2,1,1,4, 'Well Done', '2022.03.05'),
	  (3,1,1,5, 'Nice Job', '2022.05.15'),
	  (4,1,1,4, 'Well Done', '2022.06.12');

SELECT * FROM Grade;

INSERT INTO AchievementType([Name], [Description], ParticipationRate)
VALUES('DEV Acivment', 'Failed', '30'),
('DEV Acivment', '1st Place', '30'),
('DEV Acivment', '2nd Place', '30'),
('DEV Acivment', '3rd Place', '30');

SELECT * FROM AchievementType;

INSERT INTO GradeDetails(GradeID, AchievementTypeID, AchievementsPoints, AchievementsMaxPoints, AchievementDate)
VALUES (1, 1, '18', '30', '2022.05.23'),
(2, 2, '30', '30', '2022.05.23'),
(3, 3, '28', '30', '2022.05.23'),
(4, 4, '25', '30', '2022.05.23');

SELECT * FROM GradeDetails;
