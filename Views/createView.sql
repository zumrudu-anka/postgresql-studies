create VIEW ViewName as select d.id, d.name as "Department Name", f.name as "Faculty Name" from "Department" as d INNER JOIN "Faculty" as f on d.faculty = f.id;

--> ViewName yerine olusturulacak VIEW adi yazilir. Degisken adi belirlemek gibi.

--> Bu sayede uzun sorgular cok kolay bir sekilde cagrilabilir..

--> Ornegin.. Select * from ViewName;