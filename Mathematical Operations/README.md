# Mathematical & Aggregate Functions

## Notlar

- Bir sorguda aggregate fonksiyonlardan biri bulunuyorsa group by ifadesi kullanılmadan başka bir sütunun sorguya eklenmesine izin verilmez.

Hatalı:
```sql
SELECT CITY, AVG(TOTALPRICE) FROM SALES;
```

Doğru:
```sql
SELECT CITY, AVG(TOTALPRICE) FROM SALES GROUP BY CITY;
```
