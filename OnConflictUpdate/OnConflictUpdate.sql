INSERT INTO "Department" (id, name, faculty) 
VALUES (10, 'A', 5)
ON CONFLICT (id) DO UPDATE
  SET name = excluded.name, 
      faculty = excluded.faculty;
	  
select * from "Department";