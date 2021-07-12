-- //1

INSERT INTO students (name, last_name, country, age)
VALUES ('Lea', 'Hagovska', 'Estonia', 26)
RETURNING *

-- 2
INSERT INTO students (name, last_name, country, age)
VALUES 
('Luna', 'Selene', 'Estonia', 26),
('Magdalena', 'Sochon', 'Poland', 23),
('Max', 'Lawrie', 'GB', 26),
('Mohammed', 'Shah', 'UAE', 26)
RETURNING *

-- 3
UPDATE students
SET age = 30,
	country = 'Poland'
	
	WHERE name = 'Janusz'

-- 4

SELECT * FROM students WHERE country = 'Germany'
SELECT * FROM students WHERE country = 'Germany' OR country = 'Brazil'
SELECT name,
		last_name
FROM students WHERE name LIKE 'Tom%'

SELECT name FROM students WHERE age > 23
SELECT name FROM students WHERE age >= 22 AND age <=30

SELECT * FROM students ORDER BY age 
SELECT COUNT(*) FROM students WHERE age > 25

-- 5
DELETE FROM students WHERE age < 18
RETURNING *