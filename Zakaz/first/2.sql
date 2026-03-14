SELECT
    u.name,
    COUNT(*) AS total_orders
FROM
    "order" o
INNER JOIN
    "user" u ON u.id = o.user_id
GROUP BY
    u.id, u.name
;

        name         | total_orders
---------------------+--------------
 Guido Drayson       |           11
 Blinni Caspell      |           11
 Ernesto Ruvel       |           17
 Lindy Loeber        |           15
 Gwennie Kender      |           18
 Giana Austen        |           23
 Abigael Edscer      |           11
 Lib Lipp            |           23
 Joy Dunnan          |           14
 Garrott Phebey      |           12
 Vicky Tatlock       |           13
 Terrell Stoak       |           22
 Adriane Skillington |           12
 Town Eliasson       |           12
 Karee Rossbrooke    |           13
 Antoine Clemson     |           15
 Melonie Drees       |           18
 Ninetta Baptist     |           19
 Teena Cockerell     |           17
 Marcela Skip        |           20
 Bethena Bartell     |           17
 Juditha Stathor     |           14
 Edie Sinclaire      |           21
 Zechariah Byron     |           14
 Xenos Beechcraft    |           17
 Winnah Muslim       |           18
 Courtnay Kernocke   |           18
 Gilligan Filippyev  |           18
 Latisha Heersema    |           18
 Lindsey Stansbury   |           17
 Izabel Varnam       |           15
 Brynne Perschke     |            9
 Jeromy Knobell      |           15
 Maryellen Carney    |           16
 Berta Van der Mark  |           13
 Fannie Brokenshaw   |            9
 Thekla Skaid        |           16
 Wyn MacGlory        |           15
 Natal Wilmott       |           17
 Goddart Cush        |           18
 Theodore Verrell    |           15
 Hendrik Han         |           10
 Arda Reedy          |           18
 Rosemary Mathen     |           18
 Blayne Getty        |           14
 Mignonne MacAleese  |           11
 Moina Matyukon      |           15
 Elicia Dohmann      |           29
 Sarah Bohey         |           18
 Dannie Drinkall     |           21