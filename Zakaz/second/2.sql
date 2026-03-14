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
        MAX(total_amount) AS max_amount
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
  1 | Blayne Getty        | Tattoo Kit                   |        99.99
  2 | Town Eliasson       | Wireless Security System     |       299.99
  3 | Hendrik Han         | Tailgating Set               |        89.99
  4 | Adriane Skillington | Portable Air Conditioner     |       299.99
  5 | Courtnay Kernocke   | Solar String Lights          |        29.99
  5 | Courtnay Kernocke   | Laptop Stand                 |        29.99
  6 | Fannie Brokenshaw   | Outdoor Adventure Backpack   |        59.99
  7 | Abigael Edscer      | Electric Screwdriver         |        59.99
  8 | Xenos Beechcraft    | Portable Massage Gun         |        79.99
  9 | Dannie Drinkall     | Smartwatch                   |       199.99
 10 | Teena Cockerell     | Wireless HDMI Receiver       |        49.99
 11 | Edie Sinclaire      | Smart Thermostat with Wi-Fi  |       169.99
 12 | Gilligan Filippyev  | Portable Ice Maker           |       199.99
 12 | Gilligan Filippyev  | Ergonomic Gaming Chair       |       199.99
 13 | Thekla Skaid        | Portable Projector           |       199.99
 14 | Theodore Verrell    | Foot Massager Machine        |        59.99
 15 | Wyn MacGlory        | Kids Tablet                  |       129.99
 16 | Ninetta Baptist     | Cotton Sweatpants            |        29.99
 16 | Ninetta Baptist     | LED Canopy Lights            |        29.99
 16 | Ninetta Baptist     | Fleece Lined Leggings        |        29.99
 17 | Natal Wilmott       | Vacuum Sealer Machine        |        89.99
 18 | Brynne Perschke     | Home Office Chair            |       199.99
 19 | Berta Van der Mark  | Action Camera                |       199.99
 20 | Ernesto Ruvel       | Coffee Maker                 |        89.99
 21 | Gwennie Kender      | Wireless Security System     |       299.99
 22 | Lindy Loeber        | Electric Heat Press Machine  |        99.99
 23 | Antoine Clemson     | Home Brewing Starter Kit     |        79.99
 24 | Joy Dunnan          | Portable Solar Generator     |       399.99
 25 | Terrell Stoak       | Electric Food Steamer        |        59.99
 25 | Terrell Stoak       | Over-Ear Headphones          |        59.99
 26 | Bethena Bartell     | Electric Pressure Cooker     |        89.99
 27 | Lib Lipp            | Smart Wi-Fi Camera           |        89.99
 28 | Sarah Bohey         | Portable USB-C Monitor       |       199.99
 29 | Maryellen Carney    | Waterproof Rain Boots        |        69.99
 30 | Zechariah Byron     | Home Cleaning Robot          |       249.99
 31 | Winnah Muslim       | Drone                        |       249.99
 32 | Goddart Cush        | Outdoor Inflatable Pool      |       149.99
 33 | Juditha Stathor     | Self-Cleaning Cat Litter Box |       199.99
 34 | Jeromy Knobell      | Compact Refrigerator         |       199.99
 35 | Mignonne MacAleese  | Compact Portable Grill       |        79.99
 36 | Melonie Drees       | Voice-Controlled Speaker     |        99.99
 37 | Garrott Phebey      | Portable Massage Table       |       199.99
 38 | Giana Austen        | Professional Chef Knife      |        89.99
 39 | Marcela Skip        | Telescope                    |       159.99
 40 | Arda Reedy          | Emergency Preparedness Kit   |        99.99
 41 | Izabel Varnam       | Smart Air Purifier           |       199.99
 42 | Elicia Dohmann      | Faux Fur Coat                |       129.99
 43 | Karee Rossbrooke    | Outdoor Adventure Backpack   |        59.99
 44 | Vicky Tatlock       | Ceramic Cookware Set         |       179.99
 45 | Blinni Caspell      | Portable Air Conditioner     |       299.99
 45 | Blinni Caspell      | Window A/C Unit              |       299.99
 46 | Moina Matyukon      | Portable Massage Table       |       199.99
 47 | Lindsey Stansbury   | Digital Camera               |       299.99
 48 | Latisha Heersema    | Window A/C Unit              |       299.99
 49 | Rosemary Mathen     | Acoustic Guitar              |       199.99
 49 | Rosemary Mathen     | Home Office Chair            |       199.99
 50 | Guido Drayson       | Mini Projector               |       169.99