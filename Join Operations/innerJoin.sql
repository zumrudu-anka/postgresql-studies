-- select c.name, c.surname, c.city, j.name from customer as c inner join job as j on c.job = j.id;

-- select f.name, count(d.id) from "Department" as d INNER JOIN "Faculty" as f on d.faculty = f.id group by f.name;

select f.id as "Faculty ID", f.name, count(d.id) from "Department" as d INNER JOIN "Faculty" as f on d.faculty = f.id group by f.name, f.id;