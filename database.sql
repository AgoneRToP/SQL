\l -- all list
\c database_name -- connect to "database_name"
\dt -- table

\! clear -- clear to terminal

CREATE DATABASE database_name;

CREATE TABLE IF NOT EXISTS table_name (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO table_name (name, age) VALUES
('Ali', 28),
('Akbar', 21);

SELECT * FROM table_name;

UPDATE table_name
SET name = 'Alixon'
WHERE id = 1;

UPDATE table_name
SET name = 'Alixon',
age =22
WHERE id = 1;

DELETE FROM table_name WHERE id = 2;

DELETE FROM table_name;

TRUNCATE TABLE table_name;
