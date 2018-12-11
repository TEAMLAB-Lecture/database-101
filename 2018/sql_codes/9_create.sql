CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

column_name data_type[size] [NOT NULL|NULL] [DEFAULT value] [AUTO_INCREMENT]

CREATE TABLE IF NOT EXISTS tasks (
  task_id INT(11) NOT NULL AUTO_INCREMENT,
  subject VARCHAR(45) DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  end_date DATE DEFAULT NULL,
  description VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (task_id)
) ENGINE=InnoDB

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
  PRIMARY KEY ( StudentSubjectID )
);
