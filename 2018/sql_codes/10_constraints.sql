DROP DATABASE StudentExample;
CREATE DATABASE StudentExample;
USE StudentExample;

CREATE TABLE Subjects (
  SubjectID int NOT NULL AUTO_INCREMENT,
  SubjectNM varchar(50) NULL DEFAULT NULL,
  PRIMARY KEY (SubjectID)
);

CREATE TABLE Students (
  StudentID int NOT NULL,
  StudentFirstNM varchar(50) NULL,
  StudentLastNM varchar(50) NULL,
  PRIMARY KEY ( StudentID )
);

CREATE TABLE StudentSubjects (
  StudentSubjectID int NOT NULL AUTO_INCREMENT,
  StudentID int NOT NULL,
  SubjectID int NOT NULL,
  FinalGrade float NULL,
  PRIMARY KEY ( StudentSubjectID ),
  FOREIGN KEY (StudentID) 
	REFERENCES Students (StudentID) ON DELETE CASCADE  ON UPDATE CASCADE,
  FOREIGN KEY (SubjectID) 
	REFERENCES Subjects (SubjectID) ON DELETE CASCADE  ON UPDATE CASCADE

);

DELETE FROM Students WHERE StudentID = 1;

UPDATE Students as s
	SET s.StudentID = 999
	WHERE StudentID = 2;