-- CREATE or Replace FUNCTION getBookTable(param varchar)
-- returns table
-- (
-- 	id int,
-- 	name varchar,
-- 	author varchar
-- )
-- language plpgsql
-- as
-- $$
-- begin
-- 	return Query
-- 	Select b.id, b.name, b.author from book as b where name like param;
-- end;
-- $$;

-- ! Daha garanti yol

Drop function if exists getBookTable;

CREATE FUNCTION getBookTable(param varchar)
returns table
(
	id int,
	name varchar,
	author varchar
)
language plpgsql
as
$$
begin
	return Query
	Select b.id, b.name, b.author from book as b where b.name like param;
end;
$$;

select * from getbooktable('%a%');