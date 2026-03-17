SELECT
    time_zone,
    COUNT(*)
FROM
    cities
GROUP By
    time_zone;



SELECT
    SUM(price)
FROM
    meals;



SELECT
    UPPER(category_name)
FROM
    categories;

SELECT
    LOWER(category_name)
FROM
    categories;



SELECT
    LENGTH(category_name)
FROM
    categories;



SELECT
    LENGTH(TRIM(category_name))
FROM
    categories;



SELECT
    CONCAT(meal_name, ' - ', price, ' SUM')
FROM
    meals;



SELECT
    REPLACE(category_name, ' ', '_')
FROM
    categories;



SELECT EXTRACT(YEAR FROM NOW());

SELECT EXTRACT(MONTH FROM NOW());



SELECT CURRENT_TIMESTAMP;

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;


SELECT EXTRACT(YEAR FROM AGE(NOW(), '1999-05-15'));