create or replace function increaseFacultyCount()
returns trigger
as
$$
begin
update toplamfakulte set number = number + 1;
return new;
end;
$$
language plpgsql;

create trigger increaseFacultyCountTrigger
after insert
on "Faculty"
for each row
execute procedure increaseFacultyCount();

-- ! Triggerlar fonksiyonlarla beraber kullaniliyor ve fonksiyon tetikliyorlar
-- ! Gereken islem fonksiyon govdesinde yapiliyor.
-- ! Example

create or replace function test1()
returns trigger
as
$$
declare
	facultyLength integer;
begin
	facultyLength := (select length(name) from "Faculty" order by id desc limit 1);
	update toplamfakulte2 set sayi = sayi + facultyLength;
	return new;
end;
$$
language plpgsql;

create trigger test1Trig
after insert
on "Faculty"
for each row
execute procedure test1();