select id, replace(replace(name, 'ö', 'o'), 'ı', 'i') from faculty2;

-- ilk parametredeki string icindeki ikinci parametredeki ifade yerine ucuncu parametredeki ifadeyi getirir..

select id, replace(replace(name, 'ö', 'o'), 'ığı', 'igi') from faculty2;