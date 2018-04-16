use StudentExample;

INSERT INTO Students VALUES (4, 'Ben', 'Clothier');
INSERT INTO Students VALUES (5, 'John', 'Viescas');
INSERT INTO Students VALUES (6, 'Doug', 'Steele');

INSERT INTO StudentSubjects (StudentID, SubjectID, FinalGrade)
SELECT StudentID, SubjectID, FinalGrade
FROM StudentSubjects
WHERE FinalGrade > 80;

CREATE TABLE NewGrade
  SELECT *
  FROM StudentSubjects
  WHERE FinalGrade > 80;

CREATE TABLE discounts (
      id INT NOT NULL AUTO_INCREMENT,
      title VARCHAR(255) NOT NULL,
      expired_date DATE NOT NULL,
      amount DECIMAL(10 , 2 ) NULL,
      PRIMARY KEY (id)
  );

SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA LOCAL INFILE '~/workspace/database_101/sql_codes/discounts.csv'
  INTO TABLE discounts
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '~/workspace/database_101/sql_codes/discounts.csv'
  INTO TABLE discounts
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 ROWS  (id, title,@expired_date,amount)
  SET expired_date = STR_TO_DATE(@expired_date, '%Y%m%d');
