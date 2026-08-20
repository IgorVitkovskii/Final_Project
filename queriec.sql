ssh a68f596f-aaf8-411e-87c7-f0199be13918@serverhub.praktikum-services.ru -p 4554
morty@2eee5f0b8a3b:~$ psql -U morty -d scooter_rent
Password for user morty:
psql (11.18 (Debian 11.18-0+deb10u1))
Type "help" for help.
scooter_rent=# SELECT c."login", COUNT(o."track") AS orders_count
scooter_rent-# FROM "Couriers" c
scooter_rent-# JOIN "Orders" o ON c."id" = o."courierId"
scooter_rent-# WHERE o."inDelivery" = true
scooter_rent-# GROUP BY c."login";
  login  | orders_count
---------+--------------
 samokat |            4
(1 row)

scooter_rent=# ^C
scooter_rent=# SELECT "track",
scooter_rent-# CASE
scooter_rent-# WHEN "finished" = true THEN 2
scooter_rent-# WHEN "cancelled" = true THEN -1
scooter_rent-# WHEN "inDelivery" = true THEN 1
scooter_rent-# ELSE 0
scooter_rent-# END AS status
scooter_rent-# FROM "Orders";
 track  | status
--------+--------
 587178 |      1
 587178 |      1
 634146 |      1
 634146 |      1
(4 rows)