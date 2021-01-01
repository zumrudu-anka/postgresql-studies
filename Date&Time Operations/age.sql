select age(timestamp '06.03.2020'); --> Bugünün tarihi ile parametre olarak verilen tarih karşılaştırılır.

select name, date, age(date) from book; --> Kitaplarin tarihinin gunumuz tarihinden farki

select name, date, age(now(), date) from book; --> kitaplarin tarihinin gunumuz tarih ve saatinden farki