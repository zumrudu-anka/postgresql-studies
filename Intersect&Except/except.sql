select * from faculty1
except
select * from faculty2;

-- birinci tablonun ikinci tablodan farkli olan degerlerini(satirlarini getirir).

-- Birinci tabloda bulunan ikinci tabloda bulunmayan satirlar..

select name from faculty1
except
select name from faculty2;

-- birinci tablonun ikinci tablonun isim sutunundaki degerlerden farkli degerlere sahip olan satirlarini getirir.