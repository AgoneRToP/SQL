CREATE TABLE IF NOT EXISTS meals (
    meal_id SERIAL PRIMARY KEY,
    meal_name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    restaurant_id INT REFERENCES restaurants(restaurant_id)
    ON DELETE SET NULL -- CASCADE
    ON UPDATE NO ACTION,
    category_id INT REFERENCES categories(category_id)
    ON DELETE SET NULL -- CASCADE
    ON UPDATE NO ACTION
);

INSERT INTO meals (meal_name, price, restaurant_id, category_id) VALUES
    ('Паста Карбонара', 45000, 1, 2),
    ('Пицца Маргарита', 58000, 1, 2),
    ('Лимонад домашний', 20000, 1, 3),
    ('Сет Филадельфия', 120000, 2, 2),
    ('Мисо суп', 30000, 2, 1),
    ('Зеленый чай', 15000, 2, 3);

SELECT * FROM meals;

--  meal_id |    meal_name     | price  | restaurant_id | category_id
-- ---------+------------------+--------+---------------+-------------
--        1 | Паста Карбонара  |  45000 |             1 |           2
--        2 | Пицца Маргарита  |  58000 |             1 |           2
--        3 | Лимонад домашний |  20000 |             1 |           3
--        4 | Сет Филадельфия  | 120000 |             2 |           2
--        5 | Мисо суп         |  30000 |             2 |           1
--        6 | Зеленый чай      |  15000 |             2 |           3