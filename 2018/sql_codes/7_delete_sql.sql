DELETE FROM TABLE_NAME
WHERE FILED_NAME = "VALUE";


Use StudentGrades;
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM StudentGrades.GradeRangesContinuous;

DELETE FROM StudentGrades.GradeRangesContinuous
	WHERE LETTERGRADE = "A";

SELECT * FROM StudentGrades.GradeRangesContinuous;
