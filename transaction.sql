CREATE DATABASE bank;

\c bank

CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,
    owner_name VARCHAR(128) NOT NULL,
    card_number VARCHAR(16) UNIQUE NOT NULL,
    balance NUMERIC (10,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    from_account INT REFERENCES accounts(id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
    to_account INT REFERENCES accounts(id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
    amount NUMERIC(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO accounts (owner_name, card_number, balance) VALUES
    ('Ivan Ivanov', '4276123456780001', 1500.50),
    ('Maria Smirnova', '4276123456780002', 24500.00),
    ('John Doe', '4276123456780003', 100.00),
    ('Alice Wong', '4276123456780004', 5670.25),
    ('Petr Petrov', '4276123456780005', 0.00),
    ('Elena Kuzneczova', '4276123456780006', 12300.99),
    ('Robert Brown', '4276123456780007', 450.00),
    ('Svetlana Sokolova', '4276123456780008', 89000.50),
    ('Michael Lee', '4276123456780009', 12.00),
    ('Anna Pavlova', '4276123456780010', 3300.00);

-- 1 - Quest (success)

BEGIN; -- BEGIN TRANSACTION;

SELECT id AS from_id, balance  FROM accounts WHERE card_number = '4276123456780001';

SELECT id AS to_id, balance  FROM accounts WHERE card_number = '4276123456780003';

UPDATE accounts SET balance = balance - 500 WHERE id = 1;

UPDATE accounts SET balance = balance + 500 WHERE id = 3;

INSERT INTO transactions (from_account, to_account, amount)
VALUES (1, 3, 500);

COMMIT;
 
BEGIN; -- BEGIN TRANSACTION;

SELECT id AS from_id, balance  FROM accounts WHERE card_number = '4276123456780001';

SELECT id AS to_id, balance  FROM accounts WHERE card_number = '4276123456780003';

UPDATE accounts SET balance = balance - 500 WHERE id = 5;

UPDATE accounts SET balance = balance + 500 WHERE id = 3;

INSERT INTO transactions (from_account, to_account, amount)
VALUES (1, 3, 500);

ROLLBACK;





BEGIN; -- BEGIN TRANSACTION;

SELECT id AS from_id, balance  FROM accounts WHERE card_number = '4276123456780001';

SELECT id AS to_id, balance  FROM accounts WHERE card_number = '4276123456780003';

SAVEPOINT before_UPDATE;

UPDATE accounts SET balance = balance - 500 WHERE id = 6;

SAVEPOINT first_UPDATE;

UPDATE accounts SET balance = balance + 500 WHERE id = 5;

SAVEPOINT second_UPDATE;

INSERT INTO transactions (from_account, to_account, amount)
VALUES (6, 5, 3000);

ROLLBACK TO SAVEPOINT before_UPDATE;

COMMIT;





-- DEADLOCK

BEGIN; -- BEGIN TRANSACTION;

SELECT id AS from_id, balance  FROM accounts WHERE id IN (1,2) FOR UPDATE;

SELECT id AS to_id FROM accounts WHERE id = 1;

UPDATE accounts SET balance = balance - 500 WHERE id = 2;

UPDATE accounts SET balance = balance + 500 WHERE id = 1;

COMMIT;



BEGIN; -- BEGIN TRANSACTION;

SELECT id AS from_id, balance  FROM accounts WHERE id IN (1,2) FOR UPDATE;

SELECT id AS to_id FROM accounts WHERE id = 2;

UPDATE accounts SET balance = balance - 500 WHERE id = 1;

UPDATE accounts SET balance = balance + 500 WHERE id = 2;

COMMIT;



SELECT * FROM accounts;

SELECT * FROM transactions;
