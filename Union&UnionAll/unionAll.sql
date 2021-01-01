select * from faculty1
union all
select * from faculty2;

-- iki tabloyu birlestirir. Yani iki tablonun da butun satirlarini tamamen getirir.

select name from faculty1
union all
select name from faculty2;

-- iki tablonun butun isimlerini tek bir tabloda birlestirir.