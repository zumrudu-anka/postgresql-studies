select * from faculty1
union
select * from faculty2;

-- iki tabloyu birlestirir.
-- Fakat distinct bir islem uygulanir. Yani tamamen ayni olan birden fazla satir 1 kere getirilir.

-- select * ifadesini kullanacaksak, iki tablonun da sutun sayisi ve isimleri ayni olmalidir.

select name from faculty1
union
select name from faculty2;

-- iki tabloyu isim sutunlari ile birlestirir. Yani iki tablonun da butun satirlarini isim sutunuyla getirir.
-- Ayni olan isimleri birden fazla yazmaz.