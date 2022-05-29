USE SEDCACADEMYDB;

INSERT INTO Student (FirstName, LastName, DateOfBirth, EnrolledDate, Gender, NationalIDNumber, StudentCardID)
VALUES('Ados', 'Drndaros', '2002.02.05' , '2018.02.05' , 'Male' , 'AB1234', 'hshs143'),
	  ('Elisa', 'Mikrasos', '2003.03.06', '2019.02.05', 'Female', '02dj20', 'hdbdk19'),
	  ('Marta','Marteska', '2005.05.05', '2020.06.03', 'Female' , 'hdghdg02', 'dgg288'),
	  ('Bob', 'Bobsky', '2003.04.03', '2009.04.03', 'Male' , 'dk39420', 'fj2939');

SELECT * FROM Student;