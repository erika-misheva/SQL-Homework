USE SEDCACADEMYDB;

SELECT TeacherID, COUNT(Grade) AS 'Grades per Teacher'
FROM dbo.Grade
GROUP BY TeacherID
ORDER BY TeacherID asc;

SELECT TeacherID, COUNT(Grade) AS 'Grades per Teacher'
FROM dbo.Grade
WHERE StudentID < 100
GROUP BY TeacherID
ORDER BY TeacherID ASC;

SELECT StudentID, MAX(Grade) AS 'Highest Grade', AVG(Grade) AS 'Avarage Grade'
FROM Grade
GROUP BY StudentID
ORDER BY StudentID;

SELECT TeacherID, COUNT(Grade) AS 'Grades per Teacher'
FROM dbo.Grade
GROUP BY TeacherID
Having COUNT(Grade) > 200
ORDER BY TeacherID asc;

SELECT StudentID, MAX(Grade) AS 'Highest Grade', AVG(Grade) AS 'Avarage Grade',COUNT(Grade) AS 'Grades per Student'
FROM Grade
GROUP BY StudentID
Having AVG(Grade) = MAX(Grade)
ORDER BY StudentID;


SELECT StudentID, FirstName, LastName,
MAX(Grade) AS 'Highest Grade', 
AVG(Grade) AS 'Avarage Grade',
COUNT(Grade) AS 'Grades per Student'
FROM Grade 
INNER JOIN Student
ON Grade.StudentID = Student.ID 
GROUP BY StudentID, FirstName, LastName
Having AVG(Grade) = MAX(Grade)
ORDER BY StudentID;

GO

CREATE OR ALTER VIEW [vv_StudentGrades] AS 
SELECT StudentID, Count(Grade) AS GradePerStudent -- 'Grades per Student'
FROM Grade
GROUP BY StudentID;
GO

SELECT * FROM vv_StudentGrades;
GO

ALTER VIEW [vv_StudentGrades] AS 
SELECT FirstName, LastName, Count(Grade) AS GradePerStudent -- 'Grades per Student'
FROM Student
INNER JOIN Grade
ON Student.ID = Grade.StudentID
GROUP BY FirstName, LastName
GO


SELECT * FROM vv_StudentGrades
Order BY GradePerStudent DESC
GO

