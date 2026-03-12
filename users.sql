CREATE DATABASE test;

\c test;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    age SMALLINT,
    balance INT DEFAULT 0,
    GPA DECIMAL(3,2), -- or NUMERIC
    price MONEY
);

INSERT INTO users (age, balance, GPA, price) VALUES
    (12, 12, 2.34, 1000),
    (29, 12, 5.29, 2500),
    (30, 12, 9.32, 20000),
    (18, 12, 7.42, 430000);

ALTER TABLE users ADD COLUMN poema text;

ALTER TABLE users ADD COLUMN name VARCHAR(50);

ALTER TABLE users ADD COLUMN is_active BOOLEAN;

ALTER TABLE users ADD COLUMN birthdate DATE;
ALTER TABLE users ADD COLUMN time_column TIME;
ALTER TABLE users ADD COLUMN full_time TIMESTAMP;

SELECT * FROM users;

UPDATE users SET
name = 'Alixon',
poema = 'HHEGESHOPGJ;ESOHFH;OAWJFLSRH;OFHAALFHO;SEJFKLHSEKLHFKLAEHFHESFJHLKN;LSJL',
is_active = true,
birthdate = '2000-01-01',
time_column = '23:59:59',
full_time = '2000-01-01 23:59:59'
WHERE id = 1;

ALTER TABLE users DROP COLUMN poema;

CREATE TYPE status AS ENUM ('active', 'possive');

ALTER TABLE users ADD COLUMN user_status status;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

ALTER TABLE users ADD COLUMN subjact_id UUID DEFAULT uuidv7();

SELECT * FROM users;



CREATE TABLE IF NOT EXISTS table_name ();

DROP TABLE IF EXISTS table_name;

TRUNCATE TABLE table_name;

ALTER TABLE table_name ADD COLUMN solumn_name INT NOT NULL DEFAULT 2;

ALTER TABLE table_name DROP COLUMN solumn_name;

ALTER TABLE table_name ALTER COLUMN solumn_name TYPE SMALLINT;

ALTER TABLE table_name ALTER COLUMN solumn_name DROP NOT NULL;

SELECT * FROM table_name;
