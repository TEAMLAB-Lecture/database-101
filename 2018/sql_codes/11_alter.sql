-- ALTER TABLE table_name
-- ADD column_name datatype;

ALTER TABLE Students
	ADD status_name int;

ALTER TABLE Students
	ALTER status_name SET DEFAULT 1000;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE Students
	DROP COLUMN status_name;


ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

ALTER TABLE Students
	MODIFY COLUMN StudentFirstNM varchar(150) NULL;

ALTER TABLE table_name
  CHANGE COLUMN old_name new_name
				 column_definition;

ALTER TABLE Students
	CHANGE COLUMN StudentFirstNM SFNM varchar(100) NULL;

ALTER TABLE StudentSubjects
	DROP FOREIGN KEY studentsubjects_ibfk_1;

ALTER TABLE StudentSubjects
	ADD FOREIGN KEY abc (StudentID)
		REFERENCES Students (StudentID) ON DELETE CASCADE  ON UPDATE CASCADE;
