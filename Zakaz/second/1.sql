-- SELECT
--     u.id,
--     u.name,
--     SUM(o.total_amount) AS total_orders
-- FROM
--     "order" o
-- INNER JOIN
--     "user" u ON u.id = o.user_id
-- GROUP BY
--     u.id, 
--     u.name
-- HAVING 
--     SUM(o.total_amount) =
--     (SELECT
--         SUM(total_amount) AS total_orders
--     FROM
--         "order" 
--     GROUP BY
--         user_id
--     ORDER BY
--         total_orders DESC
--     LIMIT 1)
-- ;

--  id |     name      | total_orders
-- ----+---------------+--------------
--  31 | Winnah Muslim |      1163.36



SELECT
    u.id,
    u.name,
    MAX(o.total_amount) AS total_orders
FROM
    "order" o
INNER JOIN
    "user" u ON u.id = o.user_id
GROUP BY
    u.id, 
    u.name
HAVING 
    MAX(o.total_amount) =
    (SELECT
        MAX(total_amount) AS total_orders
    FROM
        "order"
    ORDER BY
        total_orders DESC
    LIMIT 1)
;

 id |    name    | total_orders
----+------------+--------------
 24 | Joy Dunnan |       399.99