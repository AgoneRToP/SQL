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
