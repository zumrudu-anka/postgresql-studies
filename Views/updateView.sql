DROP VIEW IF EXISTS viewName;
CREATE VIEW viewName
as
 SELECT d.id,
 	d.name as "Department",
    f.name as "Faculty",
	l.name as "Lesson",
	l.quota
   FROM "Department" d
     JOIN "Faculty" f ON d.faculty = f.id
	 JOIN lesson as l on d.id = l.department;


--> Daha once yazilmis bir view en kolay olarak bu sekilde guncellenir.

--> Aslinda once eski view silinmis, ardindan ayni isimde yeni view olusturulmus olunur.