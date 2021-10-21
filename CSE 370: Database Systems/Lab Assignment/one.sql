ALTER TABLE users CHANGE COLUMN influence_count followers int;

ALTER TABLE users CHANGE COLUMN member_since joining_date date;

SELECT name, email, followers  FROM users;

SELECT name, (((followers*100/1000000) * (multipliers*100/20))/100) AS  Efficiency  FROM users;

ALTER TABLE users MODIFY COLUMN multiplier char(20);
