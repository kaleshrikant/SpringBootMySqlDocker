❯ docker login
Authenticating with existing credentials...
Login Succeeded

❯ docker compose up

mysql> use basics;
Database changed

mysql> CREATE TABLE IF NOT EXISTS persons(
    ->     `id` bigint(20) NOT NULL AUTO_INCREMENT,
    ->     `name` varchar(255) DEFAULT NULL,
    ->     PRIMARY KEY (`id`)
    -> )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> show tables;
+------------------+
| Tables_in_basics |
+------------------+
| persons          |
+------------------+
1 row in set (0.00 sec)

mysql> INSERT  INTO persons(name) VALUES('Amila');
                       Query OK, 1 row affected (0.01 sec)

                       mysql> INSERT  INTO persons(name) VALUES('Iroshan');
                       Query OK, 1 row affected (0.01 sec)


mysql> desc persons;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | bigint       | NO   | PRI | NULL    | auto_increment |
| name  | varchar(255) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> select * from persons;
+----+---------+
| id | name    |
+----+---------+
|  1 | Amila   |
|  2 | Iroshan |
+----+---------+
2 rows in set (0.00 sec)