Do $$
Declare
	counter int := 0;
	summation int := 0;
Begin
	Loop
		counter := counter + 1;
		raise Notice 'Hello, PostgreSQL %', counter;
		summation := summation + counter;
		exit when counter = 15;
	end loop;
	raise notice 'Summation : %', summation;
end$$;