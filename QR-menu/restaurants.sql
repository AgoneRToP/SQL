CREATE TABLE IF NOT EXISTS restaurants (
    restaurant_id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR (50) NOT NULL,
    kitchen VARCHAR (50) NOT NULL,
    location VARCHAR (200) NOT NULL,
    phone VARCHAR (13) NOT NULL
);

INSERT INTO restaurants (restaurant_name, kitchen, location, phone) VALUES
    ('Gusto Italia', 'Итальянская', 'ул. Чехова, 12', '+79991234567'),
    ('Sakura Sushi', 'Японская', 'пр. Мира, 45', '+79997654321');

SELECT * FROM restaurants;

--  restaurant_id | restaurant_name |   kitchen   |    location    |    phone
-- ---------------+-----------------+-------------+----------------+--------------
--              1 | Gusto Italia    | Итальянская | ул. Чехова, 12 | +79991234567
--              2 | Sakura Sushi    | Японская    | пр. Мира, 45   | +79997654321