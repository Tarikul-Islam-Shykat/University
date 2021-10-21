select C.customer_name, L.loan_number from  (customer C INNER JOIN borrower B ON C.customer_id = B.customer_id) INNER JOIN loan L ON B.loan_number = L.loan_number where branch_name = 'Downtown';

select branch_name from branch B1 where exists (select * from branch B2 where B1.branch_city != "Horseneck" and B1.assets > any (select B2.assets from branch B2 where B2.branch_city = 'Horseneck'));

select A.branch_name, count() from depositor D RIGHT JOIN account A ON D.account_number = A.account_number group by A.branch_name;

select C1.customer_name, C2.customer_name, C1.customer_city from customer C1 INNER JOIN customer C2 ON C1.customer_city = C2.customer_city where C1.customer_name != C2.customer_name;

select branch_name, (balance4 / 100) AS Total_Interest from account group by branch_name;

select acount_number, max(balance) as balance, branch_city from account, branch where account.branch_name = branch.branch_name group by branch_city;

select branch_name from branch B1 where exists (select * from branch B2 where B1.branch_city != "Brooklyn" and B1.assets < ALL (select B2.assets from branch B2 where B2.branch_city = 'Brooklyn'));

select L.loan_number, L.amount, C.customer_name from (borrower B INNER JOIN customer C ON B.customer_id = C.customer_id) INNER JOIN loan L ON B.loan_number = L.loan_number order by L.amount ASC, L.loan_number DESC LIMIT 5;

select customer_name from account A, depositor D, customer C, borrower B, loan L where a.account_number = d.account_number and d.customer_id = c.customer_id and c.customer_id = b.customer_id and b.loan_number = l.loan_number and a.branch_name = 'Perryridge' and l.branch_name = 'Perryridge';

select sum(L.amount) as Total_Amount, C.customer_name, B.customer_id from (loan L INNER JOIN borrower B ON L.loan_number = B.loan_number) INNER JOIN customer C ON B.customer_id = C.customer_id group by C.customer_id HAVING COUNT(*) >= 2;
