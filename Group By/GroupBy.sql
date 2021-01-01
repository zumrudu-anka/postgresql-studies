-- select city, count(id) as person from customer group by city order by count(id);

-- select city, sum(balance) as totalBalance from customer group by city order by sum(balance);

-- select city, avg(balance) as totalBalance from customer group by city order by sum(balance);

select city, sum(balance) as totalBalance from customer where city = 'Ankara' group by city order by sum(balance);