DROP TABLE student;
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided'
);

SELECT name,major
 FROM student 
 WHERE major='Chemistry' OR name = 'Jack';

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Kate','Sociology');
INSERT INTO student(name,major) VALUES('Claire','Chemistry');
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Mike','Computer Science');

SELECT *
FROM student
ORDER BY name;

UPDATE student
SET major = 'Che'
WHERE major = 'Chemistry';

DELETE FROM student
WHERE student_id>5;

SELECT *
FROM student
WHERE name IN ('Jack','Kate') AND major IN ('Biology') AND student_id>2;