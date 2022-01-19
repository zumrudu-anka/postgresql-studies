-- SET STATISTIC IO ON => MSSQL deki bu istastiki sonuc veren sorgunun postgresql'de karsiligi var mi diye baktim.

-- Stackoverflowdaki bir cevap:
EXPLAIN (ANALYZE ON, BUFFERS ON) SELECT ...;

-- Ve size ifadenin PostgreSQL'in önbelleğiyle nasıl etkileşime girdiğini gösterecek.
-- Bunun bir önbellek eksikliğini bildirdiği durumlarda, bu bir şeyi okumak için bir işletim sistemi çağrısı olacaktır.
-- Bunun fiziksel bir G/Ç olduğundan emin olamazsınız çünkü işletim sistemi önbelleğinde olabilir.
-- Ancak bu, muhtemelen pg_stat_* bilgilerine bakmaya çalışmaktan çok burada aradığınız şeye benziyor.
