CREATE TABLE IF NOT EXISTS meals (
    meal_id SERIAL PRIMARY KEY,
    meal_name VARCHAR(100) NOT NULL,
    price INT NOT NULL
);

INSERT INTO meals (meal_name, price) VALUES
    ('Паста Карбонара', 45000),
    ('Пицца Маргарита', 58000),
    ('Лимонад домашний', 20000),
    ('Сет Филадельфия', 120000),
    ('Мисо суп', 30000),
    ('Зеленый чай', 15000);

SELECT * FROM meals;

--  meal_id |    meal_name     | price
-- ---------+------------------+--------
--        1 | Паста Карбонара  |  45000
--        2 | Пицца Маргарита  |  58000
--        3 | Лимонад домашний |  20000
--        4 | Сет Филадельфия  | 120000
--        5 | Мисо суп         |  30000
--        6 | Зеленый чай      |  15000