SELECT
    u.id,
    u.name,
    o.name AS product_name,
    o.total_amount
FROM
    "user" u
INNER JOIN
    "order" o ON u.id = o.user_id
INNER JOIN (
    SELECT
        user_id,
        MIN(total_amount) AS max_amount
    FROM
        "order"
    GROUP BY
        user_id
) AS m ON o.user_id = m.user_id AND o.total_amount = m.max_amount
ORDER BY
    u.id
;

 id |        name         |         product_name         | total_amount
----+---------------------+------------------------------+--------------
  1 | Blayne Getty        | Sparkling Blood Orange Soda  |         1.99
  2 | Town Eliasson       | Fresh Cilantro               |         1.49
  3 | Hendrik Han         | Coconut Water                |         2.49
  4 | Adriane Skillington | Banana Chips                 |         1.99
  4 | Adriane Skillington | Caramel Apple Taffy          |         1.99
  5 | Courtnay Kernocke   | Almond Joy Bars              |         1.29
  6 | Fannie Brokenshaw   | Baking Powder                |         1.79
  7 | Abigael Edscer      | Cranberry Juice              |         3.69
  8 | Xenos Beechcraft    | Organic Black Beans          |         1.29
  9 | Dannie Drinkall     | Baking Powder                |         1.79
 10 | Teena Cockerell     | Cucumber                     |         0.99
 11 | Edie Sinclaire      | Thai Green Curry Paste       |         2.49
 11 | Edie Sinclaire      | Italian Breadsticks          |         2.49
 12 | Gilligan Filippyev  | Spicy Thai Noodles           |         1.99
 13 | Thekla Skaid        | Brown Sugar                  |         1.79
 14 | Theodore Verrell    | Almond Joy Protein Bars      |         1.99
 15 | Wyn MacGlory        | Cranberry Orange Oatmeal     |         2.49
 16 | Ninetta Baptist     | Pasta (Fusilli)              |         1.79
 17 | Natal Wilmott       | Lentil Soup                  |         2.49
 18 | Brynne Perschke     | Peach Yogurt                 |         1.29
 19 | Berta Van der Mark  | Sweet Corn                   |         1.50
 19 | Berta Van der Mark  | Sweet Corn                   |         1.50
 20 | Ernesto Ruvel       | Sliced Cucumbers             |         1.29
 21 | Gwennie Kender      | Buffalo Sauce                |         2.99
 22 | Lindy Loeber        | White Rice                   |         1.49
 23 | Antoine Clemson     | Spicy Beef Taco Mix          |         1.99
 24 | Joy Dunnan          | Pasta Sauce Mix              |         1.29
 25 | Terrell Stoak       | Sweet Potatoes (organic)     |         1.99
 26 | Bethena Bartell     | Sesame Garlic Stir-Fry Sauce |         2.79
 27 | Lib Lipp            | Brown Sugar                  |         1.79
 28 | Sarah Bohey         | Sliced Olives                |         1.99
 29 | Maryellen Carney    | Coconut Cashew Yogurt        |         1.99
 30 | Zechariah Byron     | Brown Rice                   |         1.79
 31 | Winnah Muslim       | Sliced Cucumbers             |         1.29
 32 | Goddart Cush        | Vegetable Medley             |         2.99
 33 | Juditha Stathor     | Cucumber                     |         0.99
 34 | Jeromy Knobell      | Baking Soda                  |         0.99
 35 | Mignonne MacAleese  | Chickpeas                    |         1.29
 36 | Melonie Drees       | Italian Pasta                |         2.29
 37 | Garrott Phebey      | Zucchini                     |         0.79
 38 | Giana Austen        | Cinnamon Apple Sauce         |         2.49
 39 | Marcela Skip        | Organic Green Apples         |         1.49
 40 | Arda Reedy          | Chocolate Chip Cliff Bars    |         2.49
 41 | Izabel Varnam       | Fresh Basil                  |         1.99
 42 | Elicia Dohmann      | Aged White Cheddar Popcorn   |         2.99
 43 | Karee Rossbrooke    | Italian Breadsticks          |         2.49
 44 | Vicky Tatlock       | Himalayan Pink Salt          |         1.99
 45 | Blinni Caspell      | Black Olives                 |         1.99
 46 | Moina Matyukon      | Diced Tomatoes (canned)      |         1.49
 47 | Lindsey Stansbury   | Diced Tomatoes (canned)      |         1.49
 48 | Latisha Heersema    | Caramelized Onion Dip Mix    |         2.29
 49 | Rosemary Mathen     | Sliced Cucumbers             |         1.29
 50 | Guido Drayson       | Baking Soda                  |         0.99