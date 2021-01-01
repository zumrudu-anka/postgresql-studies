-- select city, sum(balance) as totalBalance from customer group by city having count(id) > 2;

-- select avg(balance) as average, city from customer group by city having avg(balance) > 5000;

select avg(balance) as average, city from customer group by city having avg(balance) > 5000 and city like '%a%';