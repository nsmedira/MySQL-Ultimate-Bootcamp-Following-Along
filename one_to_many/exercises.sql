CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30)
) ;

CREATE TABLE papers (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    grade INT(3),
    id_student INT NOT NULL,
    FOREIGN KEY (id_student) REFERENCES students(id)
) ;

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (id_student, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT *
FROM students
JOIN papers
    ON students.id = papers.id_student ;
    
SELECT first_name, title, grade
FROM students
JOIN papers
    ON students.id = papers.id_student 
ORDER BY grade DESC ;

SELECT first_name, title, grade
FROM students
LEFT JOIN papers
    ON students.id = papers.id_student ;
    
SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
FROM students
LEFT JOIN papers
    ON students.id = papers.id_student ;
    
SELECT first_name, IFNULL(AVG(grade), 0) AS 'average'
FROM students
LEFT JOIN papers
    ON students.id = papers.id_student
GROUP BY first_name 
ORDER BY average DESC;

SELECT 
    first_name, 
    IFNULL(AVG(grade), 0) AS 'average',
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS 'passing_status'
FROM students
LEFT JOIN papers
    ON students.id = papers.id_student
GROUP BY first_name 
ORDER BY average DESC;