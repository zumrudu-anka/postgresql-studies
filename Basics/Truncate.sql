-- Tablodaki bütün kayıtları siler

-- Delete all records from the selected table

-- Delete isleminden farki ise : Delete islemi ile tum satirlari silebiliriz. Fakat auto generated bir alan varsa kaldigi yerden devam eder.
-- Fakat truncate islemi ile tum satirlari sildigimizde auto generated alanlar da sifirlanir. Yani bir id identity ise tekrar 0 dan baslar.

Truncate table product;
