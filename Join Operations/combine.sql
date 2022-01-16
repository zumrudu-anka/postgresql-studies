Select Users.*, Address.* from Users, Address Where Users.ID = Address.USER_ID;


Select Users.*, Address.*, Country.* from Users, Address, City Where Users.ID = Address.USER_ID And City.ID = Address.Country_ID Group By Users.Username Having Users.ID = 5 Order By Users.ID;
