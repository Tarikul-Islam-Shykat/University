SELECT DISTINCT multiplier FROM users ORDER BY multiplier DESC;

SELECT DISTINCT member_since FROM users ORDER BY member_since;

SELECT id,email FROM users WHERE email LIKE '%.com';

SELECT name,email FROM users ORDER BY member_since DESC LIMIT 5;

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users WHERE member_since>'2020-4-30';

SELECT AVG(Length(name)) From users

SELECT COUNT(DISTINCT SUBSTRING_INDEX(email, '.', -1)) FROM users;

SELECT * FROM users ORDER BY member_since;

SELECT AVG(influence_count) FROM users WHERE member_since>'2020-05-30';

SELECT name,max(multiplier) FROM users WHERE influenct_count < 700000;

SELECT DISTINCT multiplier FROM users WHERE influence_count <900000;

SELECT AVG(influenct_count) FROM users WHERE member_since< '2020-06-11 ';

SELECT name,email,multiplier FROM users WHERE member_since>'2020-5-18' AND influence_count BETWEEN 700000 AND 990000;

SELECT id, name, email, influence_count FROM users WHERE name LIKE '%u%' AND name LIKE '%o%' AND name LIKE '%v%' AND name LIKE '%n%' AND name LIKE '%s%' AND name LIKE '%m%';
