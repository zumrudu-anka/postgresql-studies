-- Sum numeric values of the selected column from the table

select sum(balance) from customer where not city = 'Ankara';

select sum(balance) from customer where city != 'Ankara';