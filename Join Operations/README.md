### Join Operations

#### Inner Join

> SQL Example : 

```
select c.name, c.surname, c.city, j.name from customer as c inner join job as j on c.job = j.id;
```