USE school;
--- CREATE TABLE
DROP TABLE IF EXISTS students

CREATE TABLE IF NOT EXISTS students (
  id INT,
  name VARCHAR(100),
  age INT,
  gender VARCHAR(10),
  country VARCHAR(50),
  department VARCHAR(50),
  enrolled DATETIME DEFAULT CURRENT_TIMESTAMP
);


--- INSERT DATA INTO THE TABLE




INSERT INTO students (id, name, age, gender, country, department)
VALUES
(1, 'Alice Johnson', 22, 'Female', 'USA', 'Computer Science'),
(2, 'Bob Smith', 23, 'Male', 'Canada', 'Engineering'),
(3, 'Clara Lee', 21, 'Female', 'UK', 'Mathematics'),
(4, 'David Kim', 24, 'Male', 'South Korea', 'Business'),
(5, 'Eva Brown', 22, 'Female', 'Germany', 'Psychology'),
(6, 'Frank Wang', 25, 'Male', 'China', 'Physics'),
(7, 'Grace Miller', 23, 'Female', 'Australia', 'Biology'),
(8, 'Henry Wilson', 22, 'Male', 'USA', 'Computer Science'),
(9, 'Isabella Davis', 21, 'Female', 'Canada', 'Chemistry'),
(10, 'Jack Thomas', 24, 'Male', 'UK', 'Economics'),
(11, 'Karen Moore', 23, 'Female', 'Germany', 'History'),
(12, 'Leo Martinez', 22, 'Male', 'Mexico', 'Engineering'),
(13, 'Mia Robinson', 21, 'Female', 'France', 'Mathematics'),
(14, 'Nathan Clark', 25, 'Male', 'Australia', 'Business'),
(15, 'Olivia Lewis', 22, 'Female', 'South Korea', 'Psychology'),
(16, 'Paul Walker', 23, 'Male', 'USA', 'Physics'),
(17, 'Queenie Allen', 24, 'Female', 'China', 'Biology'),
(18, 'Ryan Young', 21, 'Male', 'UK', 'Computer Science'),
(19, 'Sophie Hill', 22, 'Female', 'Canada', 'Chemistry'),
(20, 'Tommy Scott', 23, 'Male', 'Germany', 'Economics'),
(21, 'Uma Mitchell', 24, 'Female', 'USA', 'History'),
(22, 'Victor Perez', 21, 'Male', 'Mexico', 'Engineering'),
(23, 'Wendy Adams', 22, 'Female', 'France', 'Mathematics'),
(24, 'Xavier Baker', 23, 'Male', 'Australia', 'Business'),
(25, 'Yasmin Carter', 24, 'Female', 'UK', 'Psychology'),
(26, 'Zachary Evans', 22, 'Male', 'South Korea', 'Physics'),
(27, 'Amy Flores', 23, 'Female', 'USA', 'Biology'),
(28, 'Brian Gonzalez', 21, 'Male', 'China', 'Computer Science'),
(29, 'Chloe Harris', 22, 'Female', 'Canada', 'Chemistry'),
(30, 'Dylan James', 24, 'Male', 'Germany', 'Economics'),
(31, 'Ella King', 23, 'Female', 'Mexico', 'History'),
(32, 'Felix Lee', 21, 'Male', 'France', 'Engineering'),
(33, 'Gabriella Morgan', 22, 'Female', 'Australia', 'Mathematics'),
(34, 'Harvey Nelson', 23, 'Male', 'UK', 'Business'),
(35, 'Isla Owens', 24, 'Female', 'South Korea', 'Psychology'),
(36, 'Jason Parker', 22, 'Male', 'USA', 'Physics'),
(37, 'Kylie Reed', 21, 'Female', 'China', 'Biology'),
(38, 'Liam Stewart', 23, 'Male', 'Canada', 'Computer Science'),
(39, 'Megan Turner', 24, 'Female', 'Germany', 'Chemistry'),
(40, 'Noah Underwood', 22, 'Male', 'Mexico', 'Economics'),
(41, 'Olive Vincent', 23, 'Female', 'France', 'History'),
(42, 'Peter White', 21, 'Male', 'Australia', 'Engineering'),
(43, 'Quinn Xu', 22, 'Female', 'UK', 'Mathematics'),
(44, 'Ruby Young', 24, 'Female', 'South Korea', 'Business'),
(45, 'Samuel Zane', 23, 'Male', 'USA', 'Psychology'),
(46, 'Tina Anderson', 22, 'Female', 'China', 'Physics'),
(47, 'Umar Brooks', 21, 'Male', 'Canada', 'Biology'),
(48, 'Vanessa Cruz', 23, 'Female', 'Germany', 'Computer Science'),
(49, 'Will Doyle', 24, 'Male', 'Mexico', 'Chemistry'),
(50, 'Zoe Ellis', 22, 'Female', 'France', 'Economics');
