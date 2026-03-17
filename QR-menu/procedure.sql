CREATE OR REPLACE PROCEDURE update_meal_price_to_one_thousand(this_meal_name VARCHAR)
    LANGUAGE plpgsql
    AS
$$
DECLARE
    old_price NUMERIC;
    this_meal_id INT;
BEGIN
    SELECT meal_id, price INTO this_meal_id, old_price FROM meals WHERE meal_name ILIKE this_meal_name;

    IF this_meal_id IS NULL THEN
        RAISE EXCEPTION 'Товар не найден!';
    END IF;

    IF old_price > 0 THEN
        UPDATE meals
        SET price = old_price + 1000
        WHERE meal_id = this_meal_id;
    END IF;
END;
$$;

CALL update_meal_price_to_one_thousand('Мисо суп');

DROP PROCEDURE update_meal_price_to_one_thousand;
