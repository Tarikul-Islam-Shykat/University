NESTED QUERY

SELECT * FROM result;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | submission_date |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| 1          | logan | cse   | a       |          100 |          17.9 | 3.90 | 2018-09-16      |
| 2          | jake  | cse   | b       |          167 |          13.9 | 3.80 | 2018-07-18      |
| 4          | raga  | bba   | l       |          120 |          15.9 | 3.56 | 2018-09-14      |
| 5          | fadf  | llb   | a       |          123 |          43.9 | 1.90 | 2019-09-16      |
| 6          | adsa  | llb   | a       |          143 |          49.9 | 2.90 | 2019-09-16      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+

--> to print the name where cgpa is maximum
 SELECT name FROM result WHERE cgpa =  ( SELECT MAX(cgpa) FROM result );
+-------+
| name  |
+-------+
| logan |
+-------+

--> find the name of each dept who have the maximum cgpa
SELECT name, major, cgpa
    -> FROM result
    -> WHERE (major,  cgpa) IN (SELECT major, max(cgpa) FROM result GROUP BY major);
+-------+-------+------+
| name  | major | cgpa |
+-------+-------+------+
| logan | cse   | 3.90 |
| raga  | bba   | 3.56 |
| adsa  | llb   | 2.90 |
+-------+-------+------+

--> write a query to find out highest cgpa in llb who have higher cgpa than atleast one  cse student
SELECT name, cgpa FROM result WHERE major = 'llb' AND cgpa > ANY( SELECT cgpa FROM result WHERE major = 'cse');

--> write a query to find out highest cgpa in llb who have higher cgpa than all  cse student
SELECT name, cgpa FROM result WHERE major = 'llb' AND cgpa > ALL( SELECT cgpa FROM result WHERE major = 'cse');


--> CORRELATED QUERY


