Do $$
Declare
	counter int := 1;
	summation int := 0;
Begin
	while counter <= 10 loop
		raise notice 'Counter: %', counter;
		summation := summation + counter;
		counter := counter + 1;
	end loop;
	raise notice 'Summation : %', summation;
end$$;