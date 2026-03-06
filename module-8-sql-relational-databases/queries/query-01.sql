USE school;

--- CREATE TABLE
DROP TABLE IF EXISTS students;

CREATE TABLE IF NOT EXISTS students (
  id INT,
  name VARCHAR(100),
  gender VARCHAR(10),
  country VARCHAR(50)
);

--- INSERT DATA INTO THE TABLE
INSERT INTO students (id, name, gender, country)
VALUES
(1, 'Alice Johnson', 'Female', 'USA'),
(2, 'Bob Smith', 'Male', 'Canada'),
(3, 'Clara Lee', 'Female', 'UK'),
(4, 'David Kim', 'Male', 'South Korea'),
(5, 'Eva Brown', 'Female', 'Germany'),
(6, 'Frank Wang', 'Male', 'China'),
(7, 'Grace Miller', 'Female', 'Australia'),
(8, 'Henry Wilson', 'Male', 'USA'),
(9, 'Isabella Davis', 'Female', 'Canada'),
(10, 'Jack Thomas', 'Male', 'UK'),
(11, 'Karen Moore', 'Female', 'Germany'),
(12, 'Leo Martinez', 'Male', 'Mexico'),
(13, 'Mia Robinson', 'Female', 'France'),
(14, 'Nathan Clark', 'Male', 'Australia'),
(15, 'Olivia Lewis', 'Female', 'South Korea'),
(16, 'Paul Walker', 'Male', 'USA'),
(17, 'Queenie Allen', 'Female', 'China'),
(18, 'Ryan Young', 'Male', 'UK'),
(19, 'Sophie Hill', 'Female', 'Canada'),
(20, 'Tommy Scott', 'Male', 'Germany'),
(21, 'Uma Mitchell', 'Female', 'USA'),
(22, 'Victor Perez', 'Male', 'Mexico'),
(23, 'Wendy Adams', 'Female', 'France'),
(24, 'Xavier Baker', 'Male', 'Australia'),
(25, 'Yasmin Carter', 'Female', 'UK'),
(26, 'Zachary Evans', 'Male', 'South Korea'),
(27, 'Amy Flores', 'Female', 'USA'),
(28, 'Brian Gonzalez', 'Male', 'China'),
(29, 'Chloe Harris', 'Female', 'Canada'),
(30, 'Dylan James', 'Male', 'Germany'),
(31, 'Ella King', 'Female', 'Mexico'),
(32, 'Felix Lee', 'Male', 'France'),
(33, 'Gabriella Morgan', 'Female', 'Australia'),
(34, 'Harvey Nelson', 'Male', 'UK'),
(35, 'Isla Owens', 'Female', 'South Korea'),
(36, 'Jason Parker', 'Male', 'USA'),
(37, 'Kylie Reed', 'Female', 'China'),
(38, 'Liam Stewart', 'Male', 'Canada'),
(39, 'Megan Turner', 'Female', 'Germany'),
(40, 'Noah Underwood', 'Male', 'Mexico'),
(41, 'Olive Vincent', 'Female', 'France'),
(42, 'Peter White', 'Male', 'Australia'),
(43, 'Quinn Xu', 'Female', 'UK'),
(44, 'Ruby Young', 'Female', 'South Korea'),
(45, 'Samuel Zane', 'Male', 'USA'),
(46, 'Tina Anderson', 'Female', 'China'),
(47, 'Umar Brooks', 'Male', 'Canada'),
(48, 'Vanessa Cruz', 'Female', 'Germany'),
(49, 'Will Doyle', 'Male', 'Mexico'),
(50, 'Zoe Ellis', 'Female', 'France');
