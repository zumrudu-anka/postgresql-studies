create table product
(
	id integer primary key not null,
	name varchar(15) not null,
	brand varchar(20),
	stock integer,
	category varchar(15)
)