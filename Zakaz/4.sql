SELECT
    *
FROM
    "order" o
RIGHT JOIN
    "user" u ON u.id = o.user_id
WHERE
    o.user_id IS NULL
;

 id | user_id | order_date | total_amount | id |       name        |            email            | created_at
----+---------+------------+--------------+----+-------------------+-----------------------------+------------
    |         |            |              | 51 | Yelena Brydone    | ybrydone0@wsj.com           | 2014-05-23
    |         |            |              | 52 | Lulita Lovewell   | llovewell1@omniture.com     | 2014-01-05
    |         |            |              | 53 | Carmine Pattenden | cpattenden2@senate.gov      | 2007-06-06
    |         |            |              | 54 | Peterus Szimoni   | pszimoni3@tinypic.com       | 2003-12-28
    |         |            |              | 55 | Gaby Poskitt      | gposkitt4@chron.com         | 2013-02-04
    |         |            |              | 56 | Nissie McLoughlin | nmcloughlin5@time.com       | 2009-12-08
    |         |            |              | 57 | Dewey Stenton     | dstenton6@exblog.jp         | 2018-10-31
    |         |            |              | 58 | Enid Selway       | eselway7@wufoo.com          | 2016-05-15
    |         |            |              | 59 | Agnella Thynn     | athynn8@bloomberg.com       | 2001-07-31
    |         |            |              | 60 | Cate Faircliff    | cfaircliff9@dailymail.co.uk | 2008-12-04