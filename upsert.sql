\c test;

CREATE TABLE IF NOT EXISTS student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age SMALLINT
);

INSERT INTO student (name, age) VALUES
    ('Lilo', 15),
    ('Stitch', 12);


SELECT * FROM student;

INSERT INTO student (id, name, age) VALUES
(1, 'Lila', 18)
ON CONFLICT (id)
DO UPDATE SET name = EXCLUDED.name, age = EXCLUDED.age;

INSERT INTO student (id, name, age) VALUES
(2, 'Scratch', 18)
ON CONFLICT (id)
DO NOTHING;

SELECT * FROM student;

