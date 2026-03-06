USE school;

-- ALTER TABLE table_name
-- ADD COLUMN column_name datatype;

-- ALTER TABLE students
-- ADD COLUMN first_name VARCHAR(30);

-- ALTER TABLE students
-- ADD COLUMN birthdate DATE;

ALTER TABLE students
CHANGE name first_name VARCHAR(30);