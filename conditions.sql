SELECT
    meal_id, meal_name,
        CASE
            WHEN price >= 50000 THEN 'PREMIUM'
            WHEN price >= 30000 THEN 'NORMAL'
            ELSE 'STANDART'
        END AS category
FROM
    meals;



DO $$
BEGIN
    IF (SELECT COUNT(*) FROM meals) > 30 THEN
        RAISE NOTICE 'M';
    ELSIF (SELECT COUNT(*) FROM meals) > 10 THEN
        RAISE NOTICE 'N';
    ELSE RAISE NOTICE '---';
    END IF;
END $$;
