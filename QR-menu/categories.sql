CREATE TABLE IF NOT EXISTS categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR (100) NOT NULL
);

INSERT INTO categories (category_name) VALUES
    ('Appetizer'),   -- Закуска
    ('Main Course'), -- Основное блюдо
    ('Drink'),       -- Напиток
    ('Dessert');     -- Десерт

SELECT * FROM categories;

--  category_id | category_name
-- -------------+---------------
--            1 | Appetizer
--            2 | Main Course
--            3 | Drink
--            4 | Dessert