select substr('Osman Durdağ', 4, 6);

-- string ifadede, ikinci parametredeki karakterden itibaren ucuncu parametredeki deger kadar karakter yazdirir..
-- index birden baslar. ikinci parametre indexindeki deger dahildir.

-- Result : 'an Dur'

select substring('Osman Durdağ', 4, 6);

--> substr ve substring fonksiyonu tamamen aynidir.


-- Good Example

Select * from Users where username like 'O%'; -- Adi o ile baslayanlar

Select * from Users where substring(username, 1, 1); -- Adi o ile baslayanlar

-- Another Good Example

Select * from Users where username like '%O'; -- Adi o ile bitenler

Select * from Users where substring(username, length(username), 1); -- Adi o ile bitenler
