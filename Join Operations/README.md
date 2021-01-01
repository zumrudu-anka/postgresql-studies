### JOIN OPERATIONS

A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

#### INNER JOIN

The INNER JOIN selects records that have matching values in both tables.

<p align="center">
    <img src = "">
</p>
- SQL Example : 

```
select c.name, c.surname, c.city, j.name from customer as c inner join job as j on c.job = j.id;
```