SELECT
   *,
   CASE
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 1 THEN 'OCAK'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 2 THEN 'SUBAT'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 3 THEN 'MART'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 4 THEN 'NISAN'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 5 THEN 'MAYIS'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 6 THEN 'HAZIRAN'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 7 THEN 'TEMMUZ'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 8 THEN 'AGUSTOS'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 9 THEN 'EYLUL'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 10 THEN 'EKIM'
    WHEN date_part('month',TIMESTAMP '2017-09-30') = 11 THEN 'KASIM'
    ELSE 'ARALIK'
   END AS Aylar
FROM my_table;

-- Another example

SELECT
	SUM (CASE
          WHEN rental_rate = 0.99 THEN 1
	       ELSE 0
	      END
	) AS "Economy",
	SUM (
		CASE
		WHEN rental_rate = 2.99 THEN 1
		ELSE 0
		END
	) AS "Mass",
	SUM (
		CASE
		WHEN rental_rate = 4.99 THEN 1
		ELSE 0
		END
	) AS "Premium"
FROM
	film;
