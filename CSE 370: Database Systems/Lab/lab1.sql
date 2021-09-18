  
show databases; --> to see all the database in the server.

create database lab; --> to create database.

MariaDB [(none)]> use lab; --> which data base to use
Database changed
MariaDB [lab]> create table result( --> give attributes of the table
    -> student_id char(4),
    -> name varchar(30),
    -> major char(3),
    -> section char(1),
    -> days_present int,
    -> project_marks double,
    -> cgpa decimal(3,2), --> 3 means how many digits and 2 means how many digits after decimal
    -> submission_date date
    -> );
Query OK, 0 rows affected (0.035 sec)


MariaDB [lab]> show tables; --> to see if any table exist
+---------------+
| Tables_in_lab |
+---------------+
| result        |
+---------------+
MariaDB [lab]> describe result; --> describe the whole table
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(30)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

--> insertion data
MariaDB [lab]>  insert into result values('6','adsa','llb','a',143,49.9,2.90,'2019-09-16'),
    ->  ('7','dafa','bba','a',150,17.9,4.00,'2019-09-15');
  +------------+--------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | submission_date |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan  | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake   | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 3          | saigan | llb   | a       |           34 |          17.4 | 3.96 | 2018-09-19      |
| 4          | raga   | bba   | c       |           32 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf   | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa   | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 7          | dafa   | bba   | a       |          150 |          17.9 | 4.00 | 2019-09-15      |
+------------+--------+-------+---------+--------------+---------------+------+-----------------+
