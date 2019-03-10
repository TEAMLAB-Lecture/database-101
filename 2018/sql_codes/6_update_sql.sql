UPDATE TABLE_NAME
SET FILED_NAME_1 = "VALUE",
    FILED_NAME_2 = "VALUE"
WHERE FILED_NAME = "VALUE";

Use StudentGrades;

SELECT * FROM StudentGrades.Students;
-- "Ben", "John", "Doug"

SET SQL_SAFE_UPDATES = 0;

UPDATE Students
	SET StudentFirstNM = "SAM";

SELECT * FROM StudentGrades.Students;

UPDATE Students
	SET StudentFirstNM = "Ben"
    WHERE StudentID = 1;

UPDATE Students
	SET StudentFirstNM = "John"
    WHERE StudentID = 2;

UPDATE Students
	SET StudentFirstNM = "Doug"
    WHERE StudentID = 3;

SELECT * FROM StudentGrades.Students;


-- 100점 이상 학생들의 성적은 100 으로 줄여라
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM StudentGrades.StudentSubjects;
UPDATE StudentSubjects as SS
	SET SS.FinalGrade = FinalGrade - 10
    WHERE SS.FinalGrade > 100;

SELECT * FROM StudentGrades.StudentSubjects;

-- NULL Clear
UPDATE StudentSubjects as SS
  SET SS.FinalGrade = NULL
  WHERE SS.FinalGrade = 100;

UPDATE StudentSubjects as SS
  SET SS.FinalGrade = 100
  WHERE SS.FinalGrade is NULL;

SELECT * FROM StudentGrades.StudentSubjects;
