-- create or replace PROCEDURE procedureName()
-- language plpgsql
-- as $$
-- begin
-- raise notice 'PostgreSQL Lessons';
-- raise notice 'New Line';
-- end; $$;

-- ! Daha garanti yol

DROP PROCEDURE IF EXISTS add_faculty;

CREATE PROCEDURE add_faculty(id integer, name text)
language plpgsql
As $$
begin
Insert into "Faculty" (id, name) values(id, name);
end; $$;