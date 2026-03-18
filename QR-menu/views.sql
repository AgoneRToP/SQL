CREATE OR REPLACE VIEW get_meals_with_categories
AS
SELECT
    m.meal_id AS id,
    m.meal_name AS name,
    c.category_name AS category
FROM
    meals m
INNER JOIN
    categories c ON m.category_id = c.category_id;



SELECT * FROM get_meals_with_categories;
