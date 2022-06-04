USE SEDCACADEMYDB;

SELECT * FROM Student
WHERE FirstName = 'Antonio';

SELECT * FROM Student
WHERE DateOfBirth > '1999-01-01';

SELECT * FROM Student
WHERE LastName like 'J%' AND EnrolledDate between '1998-01-01' and '1998-02-01'; 

SELECT * FROM Student
ORDER BY FirstName ASC;

SELECT LastName
FROM Student
UNION
SELECT LastName
FROM Teacher;

SELECT Course.[Name] AS 'Course Name', AchievementType.[Name] AS 'Achievement Name' 
FROM Course
CROSS JOIN AchievementType
WHERE AchievementType.[Name] = 'Ispit'; 

SELECT *
FROM Teacher
LEFT JOIN Grade
ON Teacher.ID= Grade.TeacherID
Where Grade.ID is Null
ORDER BY FirstName;

Select * FROM AchievementType;







