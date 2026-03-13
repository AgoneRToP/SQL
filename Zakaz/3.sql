SELECT
    u.name,
    MAX(o.total_amount) AS max_order_amount
FROM
    "order" o
INNER JOIN
    "user" u ON u.id = o.user_id
GROUP BY
    u.id, u.name
;

        name         | max_order_amount
---------------------+------------------
 Guido Drayson       |     818095319.75
 Blinni Caspell      |     915732097.84
 Ernesto Ruvel       |     900087052.37
 Lindy Loeber        |     995790274.60
 Gwennie Kender      |     992199024.17
 Giana Austen        |     932302751.43
 Abigael Edscer      |     863260615.73
 Lib Lipp            |     968436017.50
 Joy Dunnan          |     979730131.32
 Garrott Phebey      |     972262407.75
 Vicky Tatlock       |     980496559.01
 Terrell Stoak       |     908546875.26
 Adriane Skillington |     707707434.76
 Town Eliasson       |     829126015.54
 Karee Rossbrooke    |     899092554.39
 Antoine Clemson     |     982574091.56
 Melonie Drees       |     998386708.71
 Ninetta Baptist     |     943477155.31
 Teena Cockerell     |     956055390.51
 Marcela Skip        |     983262142.94
 Bethena Bartell     |     801245425.97
 Juditha Stathor     |     985300737.87
 Edie Sinclaire      |     943210914.08
 Zechariah Byron     |     989701922.25
 Xenos Beechcraft    |     948370675.12
 Winnah Muslim       |     911361892.82
 Courtnay Kernocke   |     989746419.53
 Gilligan Filippyev  |     975925621.74
 Latisha Heersema    |     993145675.61
 Lindsey Stansbury   |     948237127.11
 Izabel Varnam       |     962698569.12
 Brynne Perschke     |     865129265.46
 Jeromy Knobell      |     976203927.17
 Maryellen Carney    |     998271405.29
 Berta Van der Mark  |     935136928.78
 Fannie Brokenshaw   |     809490166.89
 Thekla Skaid        |     979825046.76
 Wyn MacGlory        |     956007639.23
 Natal Wilmott       |     850227752.88
 Goddart Cush        |     940947962.28
 Theodore Verrell    |     807662171.16
 Hendrik Han         |     801168450.52
 Arda Reedy          |     948556524.07
 Rosemary Mathen     |     970518258.16
 Blayne Getty        |     961844259.17
 Mignonne MacAleese  |     923124998.43
 Moina Matyukon      |     991640654.70
 Elicia Dohmann      |     979736354.52
 Sarah Bohey         |     951331945.00
 Dannie Drinkall     |     918587449.74