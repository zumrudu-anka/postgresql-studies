-- select * from customer where balance = (select max(balance) from customer);

-- select * from customer where balance = (select max(balance) from customer where city = 'Ankara');

-- select * from customer where job = (select id from job where name = 'Developer');

-- update customer set balance = balance + balance * 10 / 100 where job = (select id from job where name = 'Engineer');

-- update customer set balance = balance + balance * 0.1 where job = (select id from job where name = 'Engineer');

select * from customer where city = 'ERZURUM' and job = (select id from job where name = 'Teacher');