-- create procedure procedureName()
-- language plpgsql
-- as $$
-- begin
-- raise notice 'PostgreSQL Lessons';
-- end; $$;

-- ! With Parameters

-- ! With plpgsql

-- CREATE PROCEDURE procedureName(id integer, name text)
-- language plpgsql
-- As $$
-- begin
-- Insert into "Faculty" (id, name) values(id, name);
-- end; $$;

-- ! With SQL

-- CREATE PROCEDURE procedureName(id integer, name text)
-- language SQL
-- As $$
-- Insert into "Faculty" (id, name) values(id, name);
-- $$;

-- ! Strong Example

CREATE or replace PROCEDURE add_faculty(id integer, name text)
language plpgsql
As $$
declare
maxId int := (select max(f.id) from "Faculty" as f);
begin
if id = 99999 then
raise notice 'You can''t add faculty with 99999 id';
else if id <= maxId then
	id := maxId + 1;
	Insert into "Faculty" (id, name) values(id, name);
else
Insert into "Faculty" (id, name) values(id, name);
raise notice '% named faculty added.', name;
end if;
end if;
end; $$;