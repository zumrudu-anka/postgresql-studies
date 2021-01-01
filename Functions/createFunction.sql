-- create FUNCTION myFunctionName(num1 int, num2 int)
-- returns int
-- language plpgsql
-- as
-- $$
-- declare
-- 	summationResult integer;
-- begin
-- 	summationResult := num1 + num2;
-- 	return summationResult;
-- end;
-- $$;

-- ! Strong Example

-- CREATE FUNCTION getPriceWithKDV(price float)
-- returns float
-- language plpgsql
-- as
-- $$
-- begin
-- 	price := price * 0.08 + price;
-- 	return price;
-- end;
-- $$;

-- select name, author, price, getpricewithkdv(price) as "With KDV" from book;

-- ! Strong Example With Return Table

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