Use StudentGrades;

SELECT * FROM StudentGrades.Students;

SET SQL_SAFE_UPDATES = 0;
SET autocommit=0;

START TRANSACTION;
UPDATE Students
	SET StudentFirstNM = "SAM";
ROLLBACK;
SELECT * FROM StudentGrades.Students;
COMMIT;

SELECT * FROM StudentGrades.Students;

START TRANSACTION;
UPDATE Students
	SET StudentFirstNM = "SAM";
ROLLBACK;
SELECT * FROM StudentGrades.Students;
COMMIT;


START TRANSACTION;
UPDATE Students
	SET StudentFirstNM = "Ben"
    WHERE StudentID = 1;

UPDATE Students
	SET StudentFirstNM = "John"
    WHERE StudentID = 2;

ROLLBACK;

UPDATE Students
	SET StudentFirstNM = "Doug"
    WHERE StudentID = 3;
COMMIT;

SELECT * FROM StudentGrades.Students;

-- TRANSACTION EXAMPLE
-- TRANSACTION A
PROMPT TRANSACTION A;
START TRANSACTION;
UPDATE Students
	SET StudentFirstNM = "SAM";
SELECT * FROM StudentGrades.Students;

-- TRANSACTION B
PROMPT TRANSACTION B;
START TRANSACTION;
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
