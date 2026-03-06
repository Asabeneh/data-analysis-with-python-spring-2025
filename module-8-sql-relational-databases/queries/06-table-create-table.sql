USE school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    country VARCHAR(30) NOT NULL
);
