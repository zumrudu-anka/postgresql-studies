-- join is the same as inner join

-- select c.name, c.surname, c.city, j.name from customer as c inner join job as j on c.job = j.id;

-- select f.name, count(d.id) from "Department" as d INNER JOIN "Faculty" as f on d.faculty = f.id group by f.name;

select f.id as "Faculty ID", f.name, count(d.id) from "Department" as d INNER JOIN "Faculty" as f on d.faculty = f.id group by f.name, f.id;

select
  u.username, u.fullname, c.city, t.town, o.date, i.cargoReceiptNo, p.approveCode from orders as o
join
  users as u on u.id = o.userId,
  addresses as a on a.id = o.addressId,
  cities as c on c.id = a.cityId,
  towns as t on t.id = a.townId,
  invoices as i on i.orderId = o.id,
  payments as p on p.orderId = o.id
where u.username = "osman";
