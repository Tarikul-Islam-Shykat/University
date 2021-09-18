select * from result;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+

--> make word Upper case
MariaDB [lab]> SELECT UPPER(name) AS upper FROM result;
+-------+
| upper |
+-------+
| LOGAN |
| JAKE  |
| RAGA  |
| FADF  |
| ADSA  |
+-------+

--> unique value 

MariaDB [lab]> SELECT DISTINCT section FROM result;
+---------+
| section |
+---------+
| a       |
| b       |
| l       |
+---------+

--> Sorting
SELECT * FROM result ORDER BY cgpa;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
SELECT * FROM result ORDER BY cgpa DESC;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
SELECT * FROM result ORDER BY days_present , cgpa;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+

--> WHERE clause

SELECT name, major, section FROM result WHERE major='cse';
+-------+-------+---------+
| name  | major | section |
+-------+-------+---------+
| logan | cse   | a       |
| jake  | cse   | b       |
+-------+-------+---------+
SELECT name, section FROM result  WHERE days_present BETWEEN 115 AND 160;
+------+---------+
| name | section |
+------+---------+
| raga | l       |
| fadf | a       |
| adsa | a       |
+------+---------+
SELECT name, section FROM result  WHERE major IN('llb', 'cse');
+-------+---------+
| name  | section |
+-------+---------+
| logan | a       |
| jake  | b       |
| fadf  | a       |
| adsa  | a       |
+-------+---------+
SELECT name FROM result WHERE major = 'cse' AND days_present < 120;
+-------+
| name  |
+-------+
| logan |
+-------+
SELECT name FROM result WHERE name LIKE 'a%'; --> a% means whatever comes after a. there can be nothing or there can be  multiple value
+------+
| name |
+------+
| adsa |
+------+
SELECT name FROM result WHERE name LIKE 'a%s%';
+------+
| name |
+------+
| adsa |
+------+
SELECT name FROM result WHERE name LIKE 'a___'; --> underscore is used to  define the length.
+------+
| name |
+------+
| adsa |
+------+

--> AGGREGATE FUNCTIONS

SELECT MAX(cgpa) FROM result;
+-----------+
| MAX(cgpa) |
+-----------+
|      3.90 |
+-----------+
SELECT MIN(cgpa) AS MIN FROM result;
+------+
| MIN  |
+------+
| 1.90 |
+------+
MariaDB [lab]>  SELECT MAX(submission_date) AS highest_date FROM result;
+--------------+
| highest_date |
+--------------+
| 2019-09-16   |
+--------------+
MariaDB [lab]> SELECT MIN(submission_date) AS lowest_date FROM result;
+-------------+
| lowest_date |
+-------------+
| 2018-07-18  |
+-------------+

