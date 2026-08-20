ssh a68f596f-aaf8-411e-87c7-f0199be13918@serverhub.praktikum-services.ru -p 4554
morty@2eee5f0b8a3b:~$ psql -U morty -d scooter_rent
Password for user morty:smith
scooter_rent=# SELECT c."login", COUNT(o."track") AS orders_count
scooter_rent-# FROM "Couriers" c
scooter_rent-# JOIN "Orders" o ON c."id" = o."courierId"
scooter_rent-# WHERE o."inDelivery" = true
scooter_rent-# GROUP BY c."login";