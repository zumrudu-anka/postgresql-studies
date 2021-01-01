do $$
declare
    x int := 20;
    y int := 5;
    sumResult int;
    subsResult int;
    multiplicationResult int;
    divisionResult int;
begin
	sumResult := x + y;
	subsResult := x - y;
	multiplicationResult := x * y;
	divisionResult := x / y;
	raise notice 'Summation: %', sumResult;
	raise notice 'Substraction: %', subsResult;
	raise notice 'Multiplication: %', multiplicationResult;
	raise notice 'Division: %', divisionResult;
end $$;