UPDATE students
SET 
  name = CASE id
    WHEN 1 THEN 'Alice Johnson'
    WHEN 2 THEN 'Bob Smith'
    WHEN 3 THEN 'Clara Lee'
  END,
  country = CASE id
    WHEN 1 THEN 'USA'
    WHEN 2 THEN 'Canada'
    WHEN 3 THEN 'UK'
  END
WHERE id IN (1, 2, 3);
