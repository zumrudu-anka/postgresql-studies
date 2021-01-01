select * from faculty1
intersect
select * from faculty2;

-- iki tablodaki ortak(kesisen) degerleri(satirlari) getirir.


-- select * from dedigimizde sutun sayisi ayni olmalidir.

select name from faculty1
intersect
select name from faculty2;

-- select name sorgusu icin ise iki tablodaki ayni isimdeki fakulteleri getirir.