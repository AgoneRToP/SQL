SELECT * FROM cities OFFSET 10 LIMIT 10;

SELECT * FROM cities WHERE country_name = 'China' OFFSET 10 LIMIT 10;

SELECT * FROM cities WHERE country_name = 'China' ORDER BY id OFFSET 0 LIMIT 10;

SELECT * FROM cities WHERE country_name = 'China' ORDER BY id DESC OFFSET 0 LIMIT 10;

SELECT * FROM cities WHERE country_name = 'Uzbekistan';

SELECT DISTINCT country_name FROM cities;

SELECT * FROM cities WHERE country_name IN ('Cuba', 'Madagascar');

SELECT * FROM cities WHERE country_name = 'Cuba' OR country_name = 'Madagascar';

SELECT * FROM cities WHERE id BETWEEN 155 AND 175;

SELECT * FROM cities WHERE phone IS NULL;

SELECT * FROM cities WHERE country_name LIKE '%tan';

SELECT * FROM cities WHERE country_name LIKE '%ta_';

SELECT * FROM cities WHERE country_name ILIKE '%TAN';

SELECT * FROM cities WHERE country_name NOT ILIKE '%TAN';

SELECT COUNT(*), time_zone, country_name FROM cities GROUP BY time_zone, country_name HAVING COUNT(*) > 4;

SELECT id AS key, city_name AS CITY FROM cities WHERE country_name IN ('Cuba', 'Madagascar');
