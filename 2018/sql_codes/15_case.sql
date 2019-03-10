USE StudentGrades;

SELECT * FROM StudentGrades.StudentSubjects;


SELECT SubjectID, FinalGrade, 
		CASE WHEN FinalGrade >= 90 THEN 'A'
			WHEN FinalGrade >= 80 THEN 'B'
			WHEN FinalGrade >= 70 THEN 'C'
			WHEN FinalGrade >= 60 THEN 'D'
            ELSE 'F' END AS Grade
    FROM StudentSubjects;


SELECT StudentID, AVG(FinalGrade) as score, 
		CASE WHEN AVG(FinalGrade)>= 90 THEN 'A'
			WHEN AVG(FinalGrade)>= 80 THEN 'B'
			WHEN AVG(FinalGrade)>= 70 THEN 'C'
			WHEN AVG(FinalGrade)>= 60 THEN 'D'
            ELSE 'F' END AS Grade
    FROM StudentSubjects
    GROUP BY StudentID;