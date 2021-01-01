select d.id, d.name, f.name from "Department" as d LEFT JOIN "Faculty" as f on d.faculty = f.id;

-- select d.id, f.name as "Faculty", d.name as "Department" from "Faculty" as f LEFT JOIN "Department" as d on d.faculty = f.id;