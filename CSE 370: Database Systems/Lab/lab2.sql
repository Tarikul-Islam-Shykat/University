--> add new column

MariaDB [lab]> ALTER TABLE result ADD fees int;
MariaDB [lab]> select * from result;
+------------+--------+-------+---------+--------------+---------------+------+-----------------+------+
| student_id | name   | major | section | days_present | project_marks | cgpa | submission_date | fees |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+------+
| 1          | logan  | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      | NULL |
| 2          | jake   | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      | NULL |
| 3          | saigan | llb   | a       |           34 |          17.4 | 3.96 | 2018-09-19      | NULL |
| 4          | raga   | bba   | c       |           32 |          15.9 | 3.56 | 2018-09-14      | NULL |
| 5          | fadf   | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      | NULL |
| 6          | adsa   | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      | NULL |
| 7          | dafa   | bba   | a       |          150 |          17.9 | 4.00 | 2019-09-15      | NULL |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+------+

--> change column data type

MariaDB [lab]> ALTER TABLE result MODIFY COLUMN name varchar(40);
MariaDB [lab]> DESCRIBE result;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(40)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
| fees            | int(11)      | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

--> Delete column

MariaDB [lab]> ALTER TABLE result DROP COLUMN fees;
MariaDB [lab]> DESCRIBE result;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(40)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

--> change value of any row

MariaDB [lab]> UPDATE result SET days_present = 100 where student_id='7';
MariaDB [lab]> select * from result;
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | submission_date |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan  | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake   | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 3          | saigan | llb   | a       |           34 |          17.4 | 3.96 | 2018-09-19      |
| 4          | raga   | bba   | c       |           32 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf   | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa   | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 7          | dafa   | bba   | a       |      --> 100 |          17.9 | 4.00 | 2019-09-15      |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
MariaDB [lab]> UPDATE result SET days_present = 120, section='l'  where student_id='4';
MariaDB [lab]> select * from result;
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | submission_date |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan  | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake   | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 3          | saigan | llb   | a       |           34 |          17.4 | 3.96 | 2018-09-19      |
| 4          | raga   | bba   | l       |      --> 120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf   | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa   | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 7          | dafa   | bba   | a       |          100 |          17.9 | 4.00 | 2019-09-15      |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+

--> Delete any row

MariaDB [lab]> DELETE FROM result where name='dafa';
MariaDB [lab]> select * from result;
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | submission_date |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan  | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake   | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 3          | saigan | llb   | a       |           34 |          17.4 | 3.96 | 2018-09-19      |
| 4          | raga   | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf   | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa   | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
MariaDB [lab]> DELETE FROM result where days_present < 35;
MariaDB [lab]> select * from result;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+

--> To drop the table
DROP TABLE result;
DROP DATABASE lab; ---> to drop all the database


--> Retrive data 
SELECT name ,  (days_present + project_marks * 5 /12) FROM result;
+-------+----------------------------------------+
| name  | (days_present + project_marks * 5 /12) |
+-------+----------------------------------------+
| logan |                     107.45833333333333 |
| jake  |                     172.79166666666666 |
| raga  |                                126.625 |
| fadf  |                     141.29166666666666 |
| adsa  |                     163.79166666666666 |
+-------+----------------------------------------+
MariaDB [lab]>  SELECT name ,  (days_present + project_marks * 5 /12) AS total FROM result;
+-------+--------------------+
| name  | total              |
+-------+--------------------+
| logan | 107.45833333333333 |
| jake  | 172.79166666666666 |
| raga  |            126.625 |
| fadf  | 141.29166666666666 |
| adsa  | 163.79166666666666 |
+-------+--------------------+

