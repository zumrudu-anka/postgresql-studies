-- select min(balance) from customer;

-- select max(balance) from customer where city = 'Ankara';

select max(balance) - min(balance) from customer;